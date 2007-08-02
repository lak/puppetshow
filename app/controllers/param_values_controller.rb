class ParamValuesController < ApplicationController
  
  active_scaffold :param_value do |config|
    config.actions.exclude :show, :search, :delete, :nested
  end

end
