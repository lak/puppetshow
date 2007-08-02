class Host < ActiveRecord::Base
  has_many :fact_values, :dependent => :destroy
  has_many :fact_names, :through => :fact_values
  belongs_to :source_file
  has_many :resources, 
      :include => :param_values,
      :dependent => :destroy

  validates_uniqueness_of :name, :ip 

  def facts
    hash = {}
    self.fact_names.each do |fn|
      hash[:name] = fn.name
      hash[:values] = []
      fn.fact_values.each do |fv|
        hash[:values] << fv
      end
    end
    return hash
  end
      
end
