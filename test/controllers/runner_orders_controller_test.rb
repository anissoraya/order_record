require 'test_helper'

class RunnerOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @runner_order = runner_orders(:one)
  end

  test "should get index" do
    get runner_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_runner_order_url
    assert_response :success
  end

  test "should create runner_order" do
    assert_difference('RunnerOrder.count') do
      post runner_orders_url, params: { runner_order: { order_id: @runner_order.order_id, packaging_quantity: @runner_order.packaging_quantity, runner_id: @runner_order.runner_id } }
    end

    assert_redirected_to runner_order_url(RunnerOrder.last)
  end

  test "should show runner_order" do
    get runner_order_url(@runner_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_runner_order_url(@runner_order)
    assert_response :success
  end

  test "should update runner_order" do
    patch runner_order_url(@runner_order), params: { runner_order: { order_id: @runner_order.order_id, packaging_quantity: @runner_order.packaging_quantity, runner_id: @runner_order.runner_id } }
    assert_redirected_to runner_order_url(@runner_order)
  end

  test "should destroy runner_order" do
    assert_difference('RunnerOrder.count', -1) do
      delete runner_order_url(@runner_order)
    end

    assert_redirected_to runner_orders_url
  end
end
