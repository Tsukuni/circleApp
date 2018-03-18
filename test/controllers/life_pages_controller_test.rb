require 'test_helper'

class LifePagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @life_page = life_pages(:one)
  end

  test "should get index" do
    get life_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_life_page_url
    assert_response :success
  end

  test "should create life_page" do
    assert_difference('LifePage.count') do
      post life_pages_url, params: { life_page: { life_photo1: @life_page.life_photo1, life_photo2: @life_page.life_photo2, life_photo3: @life_page.life_photo3, life_photo4: @life_page.life_photo4 } }
    end

    assert_redirected_to life_page_url(LifePage.last)
  end

  test "should show life_page" do
    get life_page_url(@life_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_life_page_url(@life_page)
    assert_response :success
  end

  test "should update life_page" do
    patch life_page_url(@life_page), params: { life_page: { life_photo1: @life_page.life_photo1, life_photo2: @life_page.life_photo2, life_photo3: @life_page.life_photo3, life_photo4: @life_page.life_photo4 } }
    assert_redirected_to life_page_url(@life_page)
  end

  test "should destroy life_page" do
    assert_difference('LifePage.count', -1) do
      delete life_page_url(@life_page)
    end

    assert_redirected_to life_pages_url
  end
end
