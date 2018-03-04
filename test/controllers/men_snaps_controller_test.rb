require 'test_helper'

class MenSnapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_snap = men_snaps(:one)
  end

  test "should get index" do
    get men_snaps_url
    assert_response :success
  end

  test "should get new" do
    get new_men_snap_url
    assert_response :success
  end

  test "should create men_snap" do
    assert_difference('MenSnap.count') do
      post men_snaps_url, params: { men_snap: { men_image: @men_snap.men_image, name: @men_snap.name } }
    end

    assert_redirected_to men_snap_url(MenSnap.last)
  end

  test "should show men_snap" do
    get men_snap_url(@men_snap)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_snap_url(@men_snap)
    assert_response :success
  end

  test "should update men_snap" do
    patch men_snap_url(@men_snap), params: { men_snap: { men_image: @men_snap.men_image, name: @men_snap.name } }
    assert_redirected_to men_snap_url(@men_snap)
  end

  test "should destroy men_snap" do
    assert_difference('MenSnap.count', -1) do
      delete men_snap_url(@men_snap)
    end

    assert_redirected_to men_snaps_url
  end
end
