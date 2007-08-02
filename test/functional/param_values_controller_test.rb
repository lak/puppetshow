require File.dirname(__FILE__) + '/../test_helper'
require 'param_values_controller'

# Re-raise errors caught by the controller.
class ParamValuesController; def rescue_action(e) raise e end; end

class ParamValuesControllerTest < Test::Unit::TestCase
  fixtures :param_values

  def setup
    @controller = ParamValuesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:param_values)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_param_value
    old_count = ParamValue.count
    post :create, :param_value => { }
    assert_equal old_count+1, ParamValue.count
    
    assert_redirected_to param_value_path(assigns(:param_value))
  end

  def test_should_show_param_value
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_param_value
    put :update, :id => 1, :param_value => { }
    assert_redirected_to param_value_path(assigns(:param_value))
  end
  
  def test_should_destroy_param_value
    old_count = ParamValue.count
    delete :destroy, :id => 1
    assert_equal old_count-1, ParamValue.count
    
    assert_redirected_to param_values_path
  end
end
