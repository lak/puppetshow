class ParamNamesController < ApplicationController

  active_scaffold :param_name do |config|
    config.actions.exclude :show, :search, :delete
  end
end
