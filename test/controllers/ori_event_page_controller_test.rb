require 'test_helper'

class OriEventPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ori_event_page_index_url
    assert_response :success
  end

  test "should get show" do
    get ori_event_page_show_url
    assert_response :success
  end

end
