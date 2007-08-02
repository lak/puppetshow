require File.dirname(__FILE__) + '/../test_helper'
require 'resource_tags_controller'

# Re-raise errors caught by the controller.
class ResourceTagsController; def rescue_action(e) raise e end; end

class ResourceTagsControllerTest < Test::Unit::TestCase
  def setup
    @controller = ResourceTagsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
