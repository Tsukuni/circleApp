require 'test_helper'

class LovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lofe = loves(:one)
  end

  test "should get index" do
    get loves_url
    assert_response :success
  end

  test "should get new" do
    get new_lofe_url
    assert_response :success
  end

  test "should create lofe" do
    assert_difference('Love.count') do
      post loves_url, params: { lofe: { image1: @lofe.image1, image2: @lofe.image2, image3: @lofe.image3, image4: @lofe.image4 } }
    end

    assert_redirected_to lofe_url(Love.last)
  end

  test "should show lofe" do
    get lofe_url(@lofe)
    assert_response :success
  end

  test "should get edit" do
    get edit_lofe_url(@lofe)
    assert_response :success
  end

  test "should update lofe" do
    patch lofe_url(@lofe), params: { lofe: { image1: @lofe.image1, image2: @lofe.image2, image3: @lofe.image3, image4: @lofe.image4 } }
    assert_redirected_to lofe_url(@lofe)
  end

  test "should destroy lofe" do
    assert_difference('Love.count', -1) do
      delete lofe_url(@lofe)
    end

    assert_redirected_to loves_url
  end
end
