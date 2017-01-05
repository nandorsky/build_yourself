require 'test_helper'

class QuartergoalsControllerTest < ActionController::TestCase
  setup do
    @quartergoal = quartergoals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quartergoals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quartergoal" do
    assert_difference('Quartergoal.count') do
      post :create, quartergoal: { goal: @quartergoal.goal, user_id: @quartergoal.user_id }
    end

    assert_redirected_to quartergoal_path(assigns(:quartergoal))
  end

  test "should show quartergoal" do
    get :show, id: @quartergoal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quartergoal
    assert_response :success
  end

  test "should update quartergoal" do
    patch :update, id: @quartergoal, quartergoal: { goal: @quartergoal.goal, user_id: @quartergoal.user_id }
    assert_redirected_to quartergoal_path(assigns(:quartergoal))
  end

  test "should destroy quartergoal" do
    assert_difference('Quartergoal.count', -1) do
      delete :destroy, id: @quartergoal
    end

    assert_redirected_to quartergoals_path
  end
end
