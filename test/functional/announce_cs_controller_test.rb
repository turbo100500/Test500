require 'test_helper'

class AnnounceCsControllerTest < ActionController::TestCase
  setup do
    @announce_c = announce_cs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:announce_cs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create announce_c" do
    assert_difference('AnnounceC.count') do
      post :create, announce_c: { action: @announce_c.action, area: @announce_c.area, city: @announce_c.city, manager_id: @announce_c.manager_id, name: @announce_c.name, owner: @announce_c.owner, price: @announce_c.price, region: @announce_c.region, rent: @announce_c.rent, settlement: @announce_c.settlement, square: @announce_c.square, type: @announce_c.type }
    end

    assert_redirected_to announce_c_path(assigns(:announce_c))
  end

  test "should show announce_c" do
    get :show, id: @announce_c
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @announce_c
    assert_response :success
  end

  test "should update announce_c" do
    put :update, id: @announce_c, announce_c: { action: @announce_c.action, area: @announce_c.area, city: @announce_c.city, manager_id: @announce_c.manager_id, name: @announce_c.name, owner: @announce_c.owner, price: @announce_c.price, region: @announce_c.region, rent: @announce_c.rent, settlement: @announce_c.settlement, square: @announce_c.square, type: @announce_c.type }
    assert_redirected_to announce_c_path(assigns(:announce_c))
  end

  test "should destroy announce_c" do
    assert_difference('AnnounceC.count', -1) do
      delete :destroy, id: @announce_c
    end

    assert_redirected_to announce_cs_path
  end
end
