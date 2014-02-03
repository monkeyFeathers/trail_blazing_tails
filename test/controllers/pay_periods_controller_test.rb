require 'test_helper'

class PayPeriodsControllerTest < ActionController::TestCase
  setup do
    @pay_period = pay_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_period" do
    assert_difference('PayPeriod.count') do
      post :create, pay_period: { end_date: @pay_period.end_date, start_date: @pay_period.start_date }
    end

    assert_redirected_to pay_period_path(assigns(:pay_period))
  end

  test "should show pay_period" do
    get :show, id: @pay_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pay_period
    assert_response :success
  end

  test "should update pay_period" do
    patch :update, id: @pay_period, pay_period: { end_date: @pay_period.end_date, start_date: @pay_period.start_date }
    assert_redirected_to pay_period_path(assigns(:pay_period))
  end

  test "should destroy pay_period" do
    assert_difference('PayPeriod.count', -1) do
      delete :destroy, id: @pay_period
    end

    assert_redirected_to pay_periods_path
  end
end
