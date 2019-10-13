require 'test_helper'

class CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get cities_view_url
    assert_response :success
  end

end
