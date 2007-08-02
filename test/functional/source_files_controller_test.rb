require File.dirname(__FILE__) + '/../test_helper'
require 'source_files_controller'

# Re-raise errors caught by the controller.
class SourceFilesController; def rescue_action(e) raise e end; end

class SourceFilesControllerTest < Test::Unit::TestCase
  fixtures :source_files

  def setup
    @controller = SourceFilesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:source_files)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_source_file
    old_count = SourceFile.count
    post :create, :source_file => { }
    assert_equal old_count+1, SourceFile.count
    
    assert_redirected_to source_file_path(assigns(:source_file))
  end

  def test_should_show_source_file
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_source_file
    put :update, :id => 1, :source_file => { }
    assert_redirected_to source_file_path(assigns(:source_file))
  end
  
  def test_should_destroy_source_file
    old_count = SourceFile.count
    delete :destroy, :id => 1
    assert_equal old_count-1, SourceFile.count
    
    assert_redirected_to source_files_path
  end
end
