require 'test_helper'

class ChpaitresControllerTest < ActionController::TestCase
  setup do
    @chpaitre = chpaitres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chpaitres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chpaitre" do
    assert_difference('Chpaitre.count') do
      post :create, chpaitre: { name: @chpaitre.name, numero: @chpaitre.numero }
    end

    assert_redirected_to chpaitre_path(assigns(:chpaitre))
  end

  test "should show chpaitre" do
    get :show, id: @chpaitre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chpaitre
    assert_response :success
  end

  test "should update chpaitre" do
    patch :update, id: @chpaitre, chpaitre: { name: @chpaitre.name, numero: @chpaitre.numero }
    assert_redirected_to chpaitre_path(assigns(:chpaitre))
  end

  test "should destroy chpaitre" do
    assert_difference('Chpaitre.count', -1) do
      delete :destroy, id: @chpaitre
    end

    assert_redirected_to chpaitres_path
  end
end
