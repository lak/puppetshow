class FactNamesController < ApplicationController

  active_scaffold :fact_name do |config|
    config.actions.exclude :show, :search, :delete
  end

end
