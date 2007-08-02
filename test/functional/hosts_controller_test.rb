require File.dirname(__FILE__) + '/../test_helper'
require 'hosts_controller'

# Re-raise errors caught by the controller.
class HostsController; def rescue_action(e) raise e end; end

class HostsControllerTest < Test::Unit::TestCase
  fixtures :hosts

  def setup
    @controller = HostsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:hosts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_host
    old_count = Host.count
    post :create, :host => { }
    assert_equal old_count+1, Host.count
    
    assert_redirected_to host_path(assigns(:host))
  end

  def test_should_show_host
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_host
    put :update, :id => 1, :host => { }
    assert_redirected_to host_path(assigns(:host))
  end
  
  def test_should_destroy_host
    old_count = Host.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Host.count
    
    assert_redirected_to hosts_path
  end
end
