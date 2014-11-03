require 'test_helper'

class SalesrepsControllerTest < ActionController::TestCase
  setup do
    @salesrep = salesreps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesreps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salesrep" do
    assert_difference('Salesrep.count') do
      post :create, salesrep: { first_name: @salesrep.first_name, last_name: @salesrep.last_name }
    end

    assert_redirected_to salesrep_path(assigns(:salesrep))
  end

  test "should show salesrep" do
    get :show, id: @salesrep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salesrep
    assert_response :success
  end

  test "should update salesrep" do
    put :update, id: @salesrep, salesrep: { first_name: @salesrep.first_name, last_name: @salesrep.last_name }
    assert_redirected_to salesrep_path(assigns(:salesrep))
  end

  test "should destroy salesrep" do
    assert_difference('Salesrep.count', -1) do
      delete :destroy, id: @salesrep
    end

    assert_redirected_to salesreps_path
  end
end
