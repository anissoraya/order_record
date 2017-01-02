require 'test_helper'

class TableOrderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get table_order_index_url
    assert_response :success
  end

end
