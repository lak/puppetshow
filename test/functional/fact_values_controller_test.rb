require File.dirname(__FILE__) + '/../test_helper'
require 'fact_values_controller'

# Re-raise errors caught by the controller.
class FactValuesController; def rescue_action(e) raise e end; end

class FactValuesControllerTest < Test::Unit::TestCase
  fixtures :fact_values

  def setup
    @controller = FactValuesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:fact_values)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_fact_value
    old_count = FactValue.count
    post :create, :fact_value => { }
    assert_equal old_count+1, FactValue.count
    
    assert_redirected_to fact_value_path(assigns(:fact_value))
  end

  def test_should_show_fact_value
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_fact_value
    put :update, :id => 1, :fact_value => { }
    assert_redirected_to fact_value_path(assigns(:fact_value))
  end
  
  def test_should_destroy_fact_value
    old_count = FactValue.count
    delete :destroy, :id => 1
    assert_equal old_count-1, FactValue.count
    
    assert_redirected_to fact_values_path
  end
end
