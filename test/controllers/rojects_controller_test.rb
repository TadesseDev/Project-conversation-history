require "test_helper"

class RojectsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get rojects_update_url
    assert_response :success
  end
end
