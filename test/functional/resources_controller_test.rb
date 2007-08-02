require File.dirname(__FILE__) + '/../test_helper'
require 'resources_controller'

# Re-raise errors caught by the controller.
class ResourcesController; def rescue_action(e) raise e end; end

class ResourcesControllerTest < Test::Unit::TestCase
  fixtures :resources

  def setup
    @controller = ResourcesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:resources)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_resource
    old_count = Resource.count
    post :create, :resource => { }
    assert_equal old_count+1, Resource.count
    
    assert_redirected_to resource_path(assigns(:resource))
  end

  def test_should_show_resource
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_resource
    put :update, :id => 1, :resource => { }
    assert_redirected_to resource_path(assigns(:resource))
  end
  
  def test_should_destroy_resource
    old_count = Resource.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Resource.count
    
    assert_redirected_to resources_path
  end
end
