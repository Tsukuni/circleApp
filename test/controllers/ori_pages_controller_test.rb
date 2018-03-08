require 'test_helper'

class OriPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ori_page = ori_pages(:one)
  end

  test "should get index" do
    get ori_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_ori_page_url
    assert_response :success
  end

  test "should create ori_page" do
    assert_difference('OriPage.count') do
      post ori_pages_url, params: { ori_page: { ori_photo1: @ori_page.ori_photo1, ori_photo2: @ori_page.ori_photo2 } }
    end

    assert_redirected_to ori_page_url(OriPage.last)
  end

  test "should show ori_page" do
    get ori_page_url(@ori_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_ori_page_url(@ori_page)
    assert_response :success
  end

  test "should update ori_page" do
    patch ori_page_url(@ori_page), params: { ori_page: { ori_photo1: @ori_page.ori_photo1, ori_photo2: @ori_page.ori_photo2 } }
    assert_redirected_to ori_page_url(@ori_page)
  end

  test "should destroy ori_page" do
    assert_difference('OriPage.count', -1) do
      delete ori_page_url(@ori_page)
    end

    assert_redirected_to ori_pages_url
  end
end
