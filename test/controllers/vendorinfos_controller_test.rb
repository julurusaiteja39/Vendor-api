require "test_helper"

class VendorinfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vendorinfos_index_url
    assert_response :success
  end

  test "should get show" do
    get vendorinfos_show_url
    assert_response :success
  end

  test "should get update" do
    get vendorinfos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get vendorinfos_destroy_url
    assert_response :success
  end

  test "should get create" do
    get vendorinfos_create_url
    assert_response :success
  end
end
