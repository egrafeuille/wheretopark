require 'test_helper'

class ParkingsControllerTest < ActionController::TestCase
  setup do
    @parking = parkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking" do
    assert_difference('Parking.count') do
      post :create, parking: { address: @parking.address, free_spots: @parking.free_spots, hour_fee: @parking.hour_fee, latitude: @parking.latitude, longitude: @parking.longitude, name: @parking.name+"test", total_spots: @parking.total_spots }
    end

    assert_redirected_to parking_path(assigns(:parking))
  end

  test "should show parking" do
    get :show, id: @parking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking
    assert_response :success
  end

  test "should update parking" do
    put :update, id: @parking, parking: { address: @parking.address, free_spots: @parking.free_spots, hour_fee: @parking.hour_fee, latitude: @parking.latitude, longitude: @parking.longitude, name: @parking.name+"test", total_spots: @parking.total_spots }
    assert_redirected_to parking_path(assigns(:parking))
  end

  test "should destroy parking" do
    assert_difference('Parking.count', -1) do
      delete :destroy, id: @parking
    end

    assert_redirected_to parkings_path
  end
end
