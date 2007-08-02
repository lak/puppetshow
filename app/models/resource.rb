class Resource < ActiveRecord::Base
  has_many :param_values, :dependent => :destroy
  has_many :param_names, :through => :param_values

  has_many :resource_tags, :dependent => :destroy
  has_many :puppet_tags, :through => :resource_tags

  belongs_to :source_file
  belongs_to :host

  def to_resource(scope)
    hash = self.attributes
    hash["type"] = hash["restype"]
    hash.delete("restype")

    # FIXME At some point, we're going to want to retain this information
    # for logging and auditing.
    hash.delete("host_id")
    hash.delete("updated_at")
    hash.delete("source_file_id")
    hash.delete("id")
    hash.each do |p, v|
        hash.delete(p) if v.nil?
    end 
    hash[:scope] = scope
    hash[:source] = scope.source
    obj = Puppet::Parser::Resource.new(hash)
    self.param_names.each do |pname|
        obj.set(pname.to_resourceparam(scope.source))
    end

    # Store the ID, so we can check if we're re-collecting the same resource.
    obj.rails_id = self.id

    return obj 
  end 
end
