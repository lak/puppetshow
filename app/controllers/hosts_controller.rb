class HostsController < ApplicationController

  hobo_model_controller
  auto_actions :all, :except => [:list, :show]

  active_scaffold :host do |config|
    config.columns.exclude :fact_names
    config.list.columns = [:name, :ip, :resources, :fact_values, :last_compile]
    config.columns[:fact_values].label = "Facts"
    config.columns[:fact_values].includes = nil
    config.columns[:fact_values].association.reverse = :host
    config.columns[:resources].includes = nil
    config.columns[:resources].association.reverse = :host
  end

end
