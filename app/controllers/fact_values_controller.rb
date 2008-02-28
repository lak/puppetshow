class FactValuesController < ApplicationController

  hobo_model_controller
  auto_actions :all, :except => [:list, :show]

  active_scaffold :fact_value do |config|
    config.list.columns = [:fact_name, :value]
    config.actions.exclude :show, :search, :delete, :update
    config.columns[:fact_name].clear_link
  end
end
