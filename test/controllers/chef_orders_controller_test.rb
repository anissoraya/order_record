require 'test_helper'

class ChefOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chef_order = chef_orders(:one)
  end

  test "should get index" do
    get chef_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_chef_order_url
    assert_response :success
  end

  test "should create chef_order" do
    assert_difference('ChefOrder.count') do
      post chef_orders_url, params: { chef_order: { amount_cook: @chef_order.amount_cook, chef_id: @chef_order.chef_id, order_id: @chef_order.order_id } }
    end

    assert_redirected_to chef_order_url(ChefOrder.last)
  end

  test "should show chef_order" do
    get chef_order_url(@chef_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_chef_order_url(@chef_order)
    assert_response :success
  end

  test "should update chef_order" do
    patch chef_order_url(@chef_order), params: { chef_order: { amount_cook: @chef_order.amount_cook, chef_id: @chef_order.chef_id, order_id: @chef_order.order_id } }
    assert_redirected_to chef_order_url(@chef_order)
  end

  test "should destroy chef_order" do
    assert_difference('ChefOrder.count', -1) do
      delete chef_order_url(@chef_order)
    end

    assert_redirected_to chef_orders_url
  end
end
