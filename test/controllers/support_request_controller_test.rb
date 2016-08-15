require 'test_helper'

class SupportRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get support_request_create_url
    assert_response :success
  end

  test "should get destroy" do
    get support_request_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get support_request_edit_url
    assert_response :success
  end

  test "should get index" do
    get support_request_index_url
    assert_response :success
  end

  test "should get new" do
    get support_request_new_url
    assert_response :success
  end

  test "should get show" do
    get support_request_show_url
    assert_response :success
  end

  test "should get update" do
    get support_request_update_url
    assert_response :success
  end

end
