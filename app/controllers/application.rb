# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_puppetshow_session_id'

  ActiveScaffold.set_defaults do |config| 
    config.actions.exclude :create, :update, :delete
    config.ignore_columns = [:created_at, :updated_at]
    config.list.empty_field_text = "[n/a]"
  end

  protected
    
    def self.active_scaffold_controller_for(klass)
      return FactNamesController if klass == Puppet::Rails::FactName
      return FactValuesController if klass == Puppet::Rails::FactValue
      return HostsController if klass == Puppet::Rails::Host
      return ParamNamesController if klass == Puppet::Rails::ParamName
      return ParamValuesController if klass == Puppet::Rails::ParamValue
      return PuppetTagsController if klass == Puppet::Rails::PuppetTag
      return ResourcesController if klass == Puppet::Rails::Resource
      return ResourceTagsController if klass == Puppet::Rails::ResourceTag
      return SourceFilesController if klass == Puppet::Rails::SourceFile
      return "#{klass}ScaffoldController".constantize rescue super
    end
end
