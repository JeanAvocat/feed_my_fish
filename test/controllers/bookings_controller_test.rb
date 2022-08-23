require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bookings_show_url
    assert_response :success
  end

  test "should get create" do
    get bookings_create_url
    assert_response :success
  end

  test "should get confirm" do
    get bookings_confirm_url
    assert_response :success
  end

  test "should get decline" do
    get bookings_decline_url
    assert_response :success
  end
end
