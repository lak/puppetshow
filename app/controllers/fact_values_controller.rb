class FactValuesController < ApplicationController

  active_scaffold :fact_value do |config|
    config.list.columns.exclude :updated_at
    config.actions.exclude :show, :search, :delete, :nested
  end

end
