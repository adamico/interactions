require 'test_helper'

class ClassesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Classe.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Classe.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to classes_url
  end
  
  def test_edit
    get :edit, :id => Classe.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Classe.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Classe.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Classe.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Classe.first
    assert_redirected_to classes_url
  end
end
