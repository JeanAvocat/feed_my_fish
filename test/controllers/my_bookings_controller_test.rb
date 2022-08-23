require "test_helper"

class MyBookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_bookings_index_url
    assert_response :success
  end
end
