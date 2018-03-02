require 'test_helper'

class CampusRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campus_rank = campus_ranks(:one)
  end

  test "should get index" do
    get campus_ranks_url
    assert_response :success
  end

  test "should get new" do
    get new_campus_rank_url
    assert_response :success
  end

  test "should create campus_rank" do
    assert_difference('CampusRank.count') do
      post campus_ranks_url, params: { campus_rank: { rank1: @campus_rank.rank1, rank2: @campus_rank.rank2, rank3: @campus_rank.rank3 } }
    end

    assert_redirected_to campus_rank_url(CampusRank.last)
  end

  test "should show campus_rank" do
    get campus_rank_url(@campus_rank)
    assert_response :success
  end

  test "should get edit" do
    get edit_campus_rank_url(@campus_rank)
    assert_response :success
  end

  test "should update campus_rank" do
    patch campus_rank_url(@campus_rank), params: { campus_rank: { rank1: @campus_rank.rank1, rank2: @campus_rank.rank2, rank3: @campus_rank.rank3 } }
    assert_redirected_to campus_rank_url(@campus_rank)
  end

  test "should destroy campus_rank" do
    assert_difference('CampusRank.count', -1) do
      delete campus_rank_url(@campus_rank)
    end

    assert_redirected_to campus_ranks_url
  end
end
