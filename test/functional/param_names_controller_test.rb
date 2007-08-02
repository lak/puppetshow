require File.dirname(__FILE__) + '/../test_helper'
require 'param_names_controller'

# Re-raise errors caught by the controller.
class ParamNamesController; def rescue_action(e) raise e end; end

class ParamNamesControllerTest < Test::Unit::TestCase
  fixtures :param_names

  def setup
    @controller = ParamNamesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:param_names)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_param_name
    old_count = ParamName.count
    post :create, :param_name => { }
    assert_equal old_count+1, ParamName.count
    
    assert_redirected_to param_name_path(assigns(:param_name))
  end

  def test_should_show_param_name
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_param_name
    put :update, :id => 1, :param_name => { }
    assert_redirected_to param_name_path(assigns(:param_name))
  end
  
  def test_should_destroy_param_name
    old_count = ParamName.count
    delete :destroy, :id => 1
    assert_equal old_count-1, ParamName.count
    
    assert_redirected_to param_names_path
  end
end
