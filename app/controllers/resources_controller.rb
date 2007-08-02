require 'puppetstuff'
class ResourcesController < ApplicationController
  include PuppetStuff

  layout "application", :except => "collect_exported"
  active_scaffold :resource do |config|
    config.columns.exclude :resource_tags, :param_names
    config.columns[:param_values].label = "Parameters"
    config.columns[:param_values].includes = nil
    config.columns[:puppet_tags].includes = nil
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
