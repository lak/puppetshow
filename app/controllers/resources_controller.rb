require 'puppetstuff'
class ResourcesController < ApplicationController
  include PuppetStuff
  
  hobo_model_controller
  auto_actions :all, :except => [:list, :show]

  layout "application", :except => "collect_exported"
  active_scaffold :resource do |config|
    config.list.columns = [:name, :param_values, :resource_tags]
    config.columns[:param_values].label = "Parameters"
    config.columns[:param_values].includes = nil
    config.columns[:param_values].association.reverse = :resource
    config.columns[:puppet_tags].association.reverse = :resource_tags
    config.columns[:resource_tags].label = "Tags"
    config.columns[:resource_tags].association.reverse = :resource
  end

  def collect_exported
    @resources = Resource.find_all_by_restype(params[:restype], :include => [:tags, :param_names])

    interp, scope, source = mkclassframing
    @resources.each do |res|
       if obj = res.to_resource(scope)
          scope.setresource obj
       end
    end

#debugger

    respond_to do |format|
      format.yaml { render :text => scope.to_yaml }
    end
  end

  # GET /resources/1
  # GET /resources/1.xml
#  def show
#    conditions = {}
#    params.each_pair do |k,v|
#      if Resource.attributes.include? k
#        conditions.store(k,v)
#      end
#    end
#        
end
