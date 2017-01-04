require 'test_helper'

class GratefulsControllerTest < ActionController::TestCase
  setup do
    @grateful = gratefuls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gratefuls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grateful" do
    assert_difference('Grateful.count') do
      post :create, grateful: { comment: @grateful.comment }
    end

    assert_redirected_to grateful_path(assigns(:grateful))
  end

  test "should show grateful" do
    get :show, id: @grateful
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grateful
    assert_response :success
  end

  test "should update grateful" do
    patch :update, id: @grateful, grateful: { comment: @grateful.comment }
    assert_redirected_to grateful_path(assigns(:grateful))
  end

  test "should destroy grateful" do
    assert_difference('Grateful.count', -1) do
      delete :destroy, id: @grateful
    end

    assert_redirected_to gratefuls_path
  end
end
