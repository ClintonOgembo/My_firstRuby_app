require "test_helper"

class TimeControllerTest < ActionDispatch::IntegrationTest
  test "should get current_time" do
    get time_current_time_url
    assert_response :success
  end
end
