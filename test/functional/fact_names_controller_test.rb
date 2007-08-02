require File.dirname(__FILE__) + '/../test_helper'
require 'fact_names_controller'

# Re-raise errors caught by the controller.
class FactNamesController; def rescue_action(e) raise e end; end

class FactNamesControllerTest < Test::Unit::TestCase
  fixtures :fact_names

  def setup
    @controller = FactNamesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:fact_names)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_fact_name
    old_count = FactName.count
    post :create, :fact_name => { }
    assert_equal old_count+1, FactName.count
    
    assert_redirected_to fact_name_path(assigns(:fact_name))
  end

  def test_should_show_fact_name
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_fact_name
    put :update, :id => 1, :fact_name => { }
    assert_redirected_to fact_name_path(assigns(:fact_name))
  end
  
  def test_should_destroy_fact_name
    old_count = FactName.count
    delete :destroy, :id => 1
    assert_equal old_count-1, FactName.count
    
    assert_redirected_to fact_names_path
  end
end
