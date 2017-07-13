require 'test_helper'

class ViewingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get viewings_index_url
    assert_response :success
  end

  test "should get new" do
    get viewings_new_url
    assert_response :success
  end

  test "should get create" do
    get viewings_create_url
    assert_response :success
  end

  test "should get edit" do
    get viewings_edit_url
    assert_response :success
  end

  test "should get show" do
    get viewings_show_url
    assert_response :success
  end

  test "should get update" do
    get viewings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get viewings_destroy_url
    assert_response :success
  end

end
