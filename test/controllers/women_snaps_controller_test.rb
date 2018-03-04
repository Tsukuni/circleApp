require 'test_helper'

class WomenSnapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @women_snap = women_snaps(:one)
  end

  test "should get index" do
    get women_snaps_url
    assert_response :success
  end

  test "should get new" do
    get new_women_snap_url
    assert_response :success
  end

  test "should create women_snap" do
    assert_difference('WomenSnap.count') do
      post women_snaps_url, params: { women_snap: { name: @women_snap.name, women_image: @women_snap.women_image } }
    end

    assert_redirected_to women_snap_url(WomenSnap.last)
  end

  test "should show women_snap" do
    get women_snap_url(@women_snap)
    assert_response :success
  end

  test "should get edit" do
    get edit_women_snap_url(@women_snap)
    assert_response :success
  end

  test "should update women_snap" do
    patch women_snap_url(@women_snap), params: { women_snap: { name: @women_snap.name, women_image: @women_snap.women_image } }
    assert_redirected_to women_snap_url(@women_snap)
  end

  test "should destroy women_snap" do
    assert_difference('WomenSnap.count', -1) do
      delete women_snap_url(@women_snap)
    end

    assert_redirected_to women_snaps_url
  end
end
