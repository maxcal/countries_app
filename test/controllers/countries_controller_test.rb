require 'test_helper'

class CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get countries_url
    assert_response :success
  end

end
