require 'test_helper'

class SpecialitesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Specialite.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Specialite.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to specialites_url
  end
  
  def test_edit
    get :edit, :id => Specialite.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Specialite.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Specialite.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Specialite.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Specialite.first
    assert_redirected_to specialites_url
  end
end
