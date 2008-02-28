class PuppetTagsController < ApplicationController

  active_scaffold :puppet_tag do |config|
#    config.columns[:resources].clear_link
#    config.columns[:resource_tags].clear_link
  end  
end
