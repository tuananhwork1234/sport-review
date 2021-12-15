require 'test_helper'

class StaticPagesForceControllerTest < ActionDispatch::IntegrationTest
  test "should get home--force" do
    get static_pages__force_home--force_url
    assert_response :success
  end

end
