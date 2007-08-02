require File.dirname(__FILE__) + '/../test_helper'
require 'puppet_tags_controller'

# Re-raise errors caught by the controller.
class PuppetTagsController; def rescue_action(e) raise e end; end

class PuppetTagsControllerTest < Test::Unit::TestCase
  def setup
    @controller = PuppetTagsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
