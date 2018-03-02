require 'test_helper'

class CampusLivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campus_life = campus_lives(:one)
  end

  test "should get index" do
    get campus_lives_url
    assert_response :success
  end

  test "should get new" do
    get new_campus_life_url
    assert_response :success
  end

  test "should create campus_life" do
    assert_difference('CampusLife.count') do
      post campus_lives_url, params: { campus_life: { image1: @campus_life.image1, image2: @campus_life.image2 } }
    end

    assert_redirected_to campus_life_url(CampusLife.last)
  end

  test "should show campus_life" do
    get campus_life_url(@campus_life)
    assert_response :success
  end

  test "should get edit" do
    get edit_campus_life_url(@campus_life)
    assert_response :success
  end

  test "should update campus_life" do
    patch campus_life_url(@campus_life), params: { campus_life: { image1: @campus_life.image1, image2: @campus_life.image2 } }
    assert_redirected_to campus_life_url(@campus_life)
  end

  test "should destroy campus_life" do
    assert_difference('CampusLife.count', -1) do
      delete campus_life_url(@campus_life)
    end

    assert_redirected_to campus_lives_url
  end
end
