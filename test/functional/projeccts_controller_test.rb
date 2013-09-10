require 'test_helper'

class ProjecctsControllerTest < ActionController::TestCase
  setup do
    @projecct = projeccts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projeccts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projecct" do
    assert_difference('Projecct.count') do
      post :create, projecct: { Description: @projecct.Description, name: @projecct.name, owner: @projecct.owner, released_date: @projecct.released_date }
    end

    assert_redirected_to projecct_path(assigns(:projecct))
  end

  test "should show projecct" do
    get :show, id: @projecct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projecct
    assert_response :success
  end

  test "should update projecct" do
    put :update, id: @projecct, projecct: { Description: @projecct.Description, name: @projecct.name, owner: @projecct.owner, released_date: @projecct.released_date }
    assert_redirected_to projecct_path(assigns(:projecct))
  end

  test "should destroy projecct" do
    assert_difference('Projecct.count', -1) do
      delete :destroy, id: @projecct
    end

    assert_redirected_to projeccts_path
  end
end
