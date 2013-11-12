require 'test_helper'

class MeasurementsControllerTest < ActionController::TestCase
  setup do
    @measurement = measurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measurements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measurement" do
    assert_difference('Measurement.count') do
      post :create, measurement: { color: @measurement.color, gender: @measurement.gender, height: @measurement.height, hips: @measurement.hips, inseam: @measurement.inseam, product_id: @measurement.product_id, rise: @measurement.rise, waist: @measurement.waist, weight: @measurement.weight }
    end

    assert_redirected_to measurement_path(assigns(:measurement))
  end

  test "should show measurement" do
    get :show, id: @measurement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measurement
    assert_response :success
  end

  test "should update measurement" do
    put :update, id: @measurement, measurement: { color: @measurement.color, gender: @measurement.gender, height: @measurement.height, hips: @measurement.hips, inseam: @measurement.inseam, product_id: @measurement.product_id, rise: @measurement.rise, waist: @measurement.waist, weight: @measurement.weight }
    assert_redirected_to measurement_path(assigns(:measurement))
  end

  test "should destroy measurement" do
    assert_difference('Measurement.count', -1) do
      delete :destroy, id: @measurement
    end

    assert_redirected_to measurements_path
  end
end
