require 'test_helper'

class AnnounceIsControllerTest < ActionController::TestCase
  setup do
    @announce_i = announce_is(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:announce_is)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create announce_i" do
    assert_difference('AnnounceI.count') do
      post :create, announce_i: { Jil: @announce_i.Jil, KU: @announce_i.KU, OB: @announce_i.OB, action: @announce_i.action, area: @announce_i.area, city: @announce_i.city, fact_price: @announce_i.fact_price, floor_all: @announce_i.floor_all, floor_num: @announce_i.floor_num, manager_id: @announce_i.manager_id, name: @announce_i.name, owner: @announce_i.owner, price: @announce_i.price, region: @announce_i.region, settlement: @announce_i.settlement, status: @announce_i.status }
    end

    assert_redirected_to announce_i_path(assigns(:announce_i))
  end

  test "should show announce_i" do
    get :show, id: @announce_i
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @announce_i
    assert_response :success
  end

  test "should update announce_i" do
    put :update, id: @announce_i, announce_i: { Jil: @announce_i.Jil, KU: @announce_i.KU, OB: @announce_i.OB, action: @announce_i.action, area: @announce_i.area, city: @announce_i.city, fact_price: @announce_i.fact_price, floor_all: @announce_i.floor_all, floor_num: @announce_i.floor_num, manager_id: @announce_i.manager_id, name: @announce_i.name, owner: @announce_i.owner, price: @announce_i.price, region: @announce_i.region, settlement: @announce_i.settlement, status: @announce_i.status }
    assert_redirected_to announce_i_path(assigns(:announce_i))
  end

  test "should destroy announce_i" do
    assert_difference('AnnounceI.count', -1) do
      delete :destroy, id: @announce_i
    end

    assert_redirected_to announce_is_path
  end
end
