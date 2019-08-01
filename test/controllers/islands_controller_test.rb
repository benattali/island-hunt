require 'test_helper'

class IslandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get islands_index_url
    assert_response :success
  end

  test "should get show" do
    get islands_show_url
    assert_response :success
  end

  test "should get new" do
    get islands_new_url
    assert_response :success
  end

  test "should get create" do
    get islands_create_url
    assert_response :success
  end

  test "should get edit" do
    get islands_edit_url
    assert_response :success
  end

  test "should get update" do
    get islands_update_url
    assert_response :success
  end

  test "should get destroy" do
    get islands_destroy_url
    assert_response :success
  end

end
