# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_puppetstore_session_id'

  ActiveScaffold.set_defaults do |config| 
    config.actions.exclude :create, :update, :delete
    config.list.empty_field_text = "[n/a]"
  end
end
