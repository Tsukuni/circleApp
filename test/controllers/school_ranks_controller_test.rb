require 'test_helper'

class SchoolRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_rank = school_ranks(:one)
  end

  test "should get index" do
    get school_ranks_url
    assert_response :success
  end

  test "should get new" do
    get new_school_rank_url
    assert_response :success
  end

  test "should create school_rank" do
    assert_difference('SchoolRank.count') do
      post school_ranks_url, params: { school_rank: { content: @school_rank.content, qestion1: @school_rank.qestion1, qestion2: @school_rank.qestion2, qt1_rank1: @school_rank.qt1_rank1, qt1_rank2: @school_rank.qt1_rank2, qt1_rank3: @school_rank.qt1_rank3, qt2_rank1: @school_rank.qt2_rank1, qt2_rank2: @school_rank.qt2_rank2, qt2_rank3: @school_rank.qt2_rank3 } }
    end

    assert_redirected_to school_rank_url(SchoolRank.last)
  end

  test "should show school_rank" do
    get school_rank_url(@school_rank)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_rank_url(@school_rank)
    assert_response :success
  end

  test "should update school_rank" do
    patch school_rank_url(@school_rank), params: { school_rank: { content: @school_rank.content, qestion1: @school_rank.qestion1, qestion2: @school_rank.qestion2, qt1_rank1: @school_rank.qt1_rank1, qt1_rank2: @school_rank.qt1_rank2, qt1_rank3: @school_rank.qt1_rank3, qt2_rank1: @school_rank.qt2_rank1, qt2_rank2: @school_rank.qt2_rank2, qt2_rank3: @school_rank.qt2_rank3 } }
    assert_redirected_to school_rank_url(@school_rank)
  end

  test "should destroy school_rank" do
    assert_difference('SchoolRank.count', -1) do
      delete school_rank_url(@school_rank)
    end

    assert_redirected_to school_ranks_url
  end
end
