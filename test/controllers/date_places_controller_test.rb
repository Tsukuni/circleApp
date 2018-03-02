require 'test_helper'

class DatePlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_place = date_places(:one)
  end

  test "should get index" do
    get date_places_url
    assert_response :success
  end

  test "should get new" do
    get new_date_place_url
    assert_response :success
  end

  test "should create date_place" do
    assert_difference('DatePlace.count') do
      post date_places_url, params: { date_place: { context: @date_place.context, image: @date_place.image, name: @date_place.name, url: @date_place.url } }
    end

    assert_redirected_to date_place_url(DatePlace.last)
  end

  test "should show date_place" do
    get date_place_url(@date_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_place_url(@date_place)
    assert_response :success
  end

  test "should update date_place" do
    patch date_place_url(@date_place), params: { date_place: { context: @date_place.context, image: @date_place.image, name: @date_place.name, url: @date_place.url } }
    assert_redirected_to date_place_url(@date_place)
  end

  test "should destroy date_place" do
    assert_difference('DatePlace.count', -1) do
      delete date_place_url(@date_place)
    end

    assert_redirected_to date_places_url
  end
end
