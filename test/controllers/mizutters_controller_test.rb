require 'test_helper'

class MizuttersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mizutters_index_url
    assert_response :success
  end

end
