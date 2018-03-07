require 'test_helper'

class UnisnaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unisna_index_url
    assert_response :success
  end

end
