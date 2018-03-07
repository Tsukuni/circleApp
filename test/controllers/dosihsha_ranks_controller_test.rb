require 'test_helper'

class DosihshaRanksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dosihsha_ranks_index_url
    assert_response :success
  end

end
