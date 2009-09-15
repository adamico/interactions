require 'test_helper'

class PrincipesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Principe.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Principe.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to principes_url
  end
  
  def test_edit
    get :edit, :id => Principe.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Principe.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Principe.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Principe.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Principe.first
    assert_redirected_to principes_url
  end
end
