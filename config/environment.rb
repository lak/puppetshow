# Be sure to restart your web server when you modify this file.

# Uncomment below to force Rails into production mode when 
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
#RAILS_GEM_VERSION = '1.2.3' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

# Framework needs to boot first so puppet/rails uses the same version.
require 'puppet/rails'
module Rails
  class Configuration
    def database_configuration
      Puppet[:config] = "/etc/puppet/puppet.conf"
      Puppet.parse_config
      pm_conf = Puppet.settings.instance_variable_get(:@values)[:puppetmasterd]
      conf = YAML::load(ERB.new(IO.read(database_configuration_file)).result)
      unless pm_conf.nil? or ! pm_conf[:storeconfigs]
        conf.each do |k, v|
          v["database"] = pm_conf[:dbname] ||= "puppet"
          v["username"] = pm_conf[:dbuser] 
          v["password"] = pm_conf[:dbpassword] 
          v["host"] = pm_conf[:dbserver] 
          v["socket"] = pm_conf[:dbsocket] 
          v["adapter"] = pm_conf[:dbadapter] 
        
          if pm_conf[:dbadapter] =~ /^sqlite/
            #This should set the default according to puppet if it's not defined
            v["database"] = pm_conf[:dblocation] ||= Puppet[:dblocation]
          end
        end
      end
      conf
    end
  end
end

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here
  config.action_controller.session = { :session_key => "_puppetshow_session", :secret => "dd02c7c2232759874e1c205587017bed"}
  
  # Skip frameworks you're not going to use (only works if using vendor/rails)
  # config.frameworks -= [ :action_web_service, :action_mailer ]

  # Only load the plugins named here, by default all plugins in vendor/plugins are loaded
  # config.plugins = %W( exception_notification ssl_requirement )

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level 
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Use the database for sessions instead of the file system
  # (create the session table with 'rake db:sessions:create')
  config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper, 
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector

  # Make Active Record use UTC-base instead of local time
  # config.active_record.default_timezone = :utc
  
  # See Rails::Configuration for more options
end

# Add new inflection rules using the following format 
# (all these examples are active by default):
# Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register "application/x-mobile", :mobile

# Include your application configuration below

class Array
   def to_h
     if all?{|e| e.respond_to?(:size, :inject) and e.size == 2}
       inject({}){|h,(k,v)| h[k] = v; h}
     else
       Hash[*self]
     end
   end 
end
