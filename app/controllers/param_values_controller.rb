class ParamValuesController < ApplicationController
  
  active_scaffold :param_value do |config|
    config.list.columns = [:param_name, :value]
    config.actions.exclude :show, :search, :delete, :nested
  end

  hobo_model_controller
  auto_actions :all, :except => [:list, :show]

end
