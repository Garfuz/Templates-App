require 'test_helper'

class WebpageControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get webpage_edit_url
    assert_response :success
  end

end
