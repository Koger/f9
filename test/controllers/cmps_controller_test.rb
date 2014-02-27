require 'test_helper'

class CmpsControllerTest < ActionController::TestCase
  setup do
    @cmp = cmps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cmps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cmp" do
    assert_difference('Cmp.count') do
      post :create, cmp: {  }
    end

    assert_redirected_to cmp_path(assigns(:cmp))
  end

  test "should show cmp" do
    get :show, id: @cmp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cmp
    assert_response :success
  end

  test "should update cmp" do
    patch :update, id: @cmp, cmp: {  }
    assert_redirected_to cmp_path(assigns(:cmp))
  end

  test "should destroy cmp" do
    assert_difference('Cmp.count', -1) do
      delete :destroy, id: @cmp
    end

    assert_redirected_to cmps_path
  end
end
