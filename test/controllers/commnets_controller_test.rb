require "test_helper"

class CommnetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get commnets_new_url
    assert_response :success
  end

  test "should get create" do
    get commnets_create_url
    assert_response :success
  end
end
