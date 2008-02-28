class ResourceTagsController < ApplicationController

  active_scaffold :resource_tag do |config|
    config.actions.exclude :show
  end  

  hobo_model_controller
  auto_actions :all, :except => [:list]

end
