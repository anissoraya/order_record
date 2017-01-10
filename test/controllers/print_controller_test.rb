require 'test_helper'

class PrintControllerTest < ActionDispatch::IntegrationTest
  test "should get print_order" do
    get print_print_order_url
    assert_response :success
  end

end
