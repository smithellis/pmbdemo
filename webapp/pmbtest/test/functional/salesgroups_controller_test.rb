require 'test_helper'

class SalesgroupsControllerTest < ActionController::TestCase
  setup do
    @salesgroup = salesgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salesgroup" do
    assert_difference('Salesgroup.count') do
      post :create, salesgroup: { description: @salesgroup.description }
    end

    assert_redirected_to salesgroup_path(assigns(:salesgroup))
  end

  test "should show salesgroup" do
    get :show, id: @salesgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salesgroup
    assert_response :success
  end

  test "should update salesgroup" do
    put :update, id: @salesgroup, salesgroup: { description: @salesgroup.description }
    assert_redirected_to salesgroup_path(assigns(:salesgroup))
  end

  test "should destroy salesgroup" do
    assert_difference('Salesgroup.count', -1) do
      delete :destroy, id: @salesgroup
    end

    assert_redirected_to salesgroups_path
  end
end
