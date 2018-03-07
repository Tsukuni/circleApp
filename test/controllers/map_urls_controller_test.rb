require 'test_helper'

class MapUrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @map_url = map_urls(:one)
  end

  test "should get index" do
    get map_urls_url
    assert_response :success
  end

  test "should get new" do
    get new_map_url_url
    assert_response :success
  end

  test "should create map_url" do
    assert_difference('MapUrl.count') do
      post map_urls_url, params: { map_url: { url: @map_url.url } }
    end

    assert_redirected_to map_url_url(MapUrl.last)
  end

  test "should show map_url" do
    get map_url_url(@map_url)
    assert_response :success
  end

  test "should get edit" do
    get edit_map_url_url(@map_url)
    assert_response :success
  end

  test "should update map_url" do
    patch map_url_url(@map_url), params: { map_url: { url: @map_url.url } }
    assert_redirected_to map_url_url(@map_url)
  end

  test "should destroy map_url" do
    assert_difference('MapUrl.count', -1) do
      delete map_url_url(@map_url)
    end

    assert_redirected_to map_urls_url
  end
end
