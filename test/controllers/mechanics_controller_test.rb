require 'test_helper'

class MechanicsControllerTest < ActionController::TestCase
  setup do
    @mechanic = mechanics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mechanics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mechanic" do
    assert_difference('Mechanic.count') do
      post :create, mechanic: { name: @mechanic.name, password_digest: @mechanic.password_digest, qualifications: @mechanic.qualifications }
    end

    assert_redirected_to mechanic_path(assigns(:mechanic))
  end

  test "should show mechanic" do
    get :show, id: @mechanic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mechanic
    assert_response :success
  end

  test "should update mechanic" do
    patch :update, id: @mechanic, mechanic: { name: @mechanic.name, password_digest: @mechanic.password_digest, qualifications: @mechanic.qualifications }
    assert_redirected_to mechanic_path(assigns(:mechanic))
  end

  test "should destroy mechanic" do
    assert_difference('Mechanic.count', -1) do
      delete :destroy, id: @mechanic
    end

    assert_redirected_to mechanics_path
  end
end
