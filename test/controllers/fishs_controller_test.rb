require "test_helper"

class FishsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fishs_index_url
    assert_response :success
  end

  test "should get show" do
    get fishs_show_url
    assert_response :success
  end

  test "should get new" do
    get fishs_new_url
    assert_response :success
  end

  test "should get create" do
    get fishs_create_url
    assert_response :success
  end

  test "should get edit" do
    get fishs_edit_url
    assert_response :success
  end

  test "should get update" do
    get fishs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fishs_destroy_url
    assert_response :success
  end
end
