require "test_helper"

class WeightRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get weight_records_new_url
    assert_response :success
  end

  test "should get create" do
    get weight_records_create_url
    assert_response :success
  end

  test "should get index" do
    get weight_records_index_url
    assert_response :success
  end

  test "should get show" do
    get weight_records_show_url
    assert_response :success
  end

  test "should get edit" do
    get weight_records_edit_url
    assert_response :success
  end

  test "should get update" do
    get weight_records_update_url
    assert_response :success
  end

  test "should get destroy" do
    get weight_records_destroy_url
    assert_response :success
  end
end
