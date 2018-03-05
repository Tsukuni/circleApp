require 'test_helper'

class MapsControllerTest < ActionDispatch::IntegrationTest
  test "should get kyotanabe" do
    get maps_kyotanabe_url
    assert_response :success
  end

  test "should get imadegawa" do
    get maps_imadegawa_url
    assert_response :success
  end

end
