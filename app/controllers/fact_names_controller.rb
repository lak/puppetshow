class FactNamesController < ApplicationController

  active_scaffold :fact_name do |config|
    config.actions.exclude :show, :search, :delete
    config.columns[:fact_values].association.reverse = :fact_name
  end

end
