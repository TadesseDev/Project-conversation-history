require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get projects_update_url
    assert_response :success
  end
end
