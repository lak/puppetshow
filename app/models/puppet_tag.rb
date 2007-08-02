class PuppetTag < ActiveRecord::Base
   has_many :resource_tags, :dependent => :destroy
   has_many :resources, :through => :resource_tags
end
