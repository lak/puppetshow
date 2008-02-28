class SourceFilesController < ApplicationController

  active_scaffold :source_file do |config|
  end

  hobo_model_controller
  auto_actions :all, :except => [:list, :show]

end
