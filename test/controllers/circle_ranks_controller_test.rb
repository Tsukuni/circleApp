require 'test_helper'

class CircleRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @circle_rank = circle_ranks(:one)
  end

  test "should get index" do
    get circle_ranks_url
    assert_response :success
  end

  test "should get new" do
    get new_circle_rank_url
    assert_response :success
  end

  test "should create circle_rank" do
    assert_difference('CircleRank.count') do
      post circle_ranks_url, params: { circle_rank: { qestion1: @circle_rank.qestion1, qestion2: @circle_rank.qestion2, qestion3: @circle_rank.qestion3, qt1_rank1: @circle_rank.qt1_rank1, qt1_rank2: @circle_rank.qt1_rank2, qt1_rank3: @circle_rank.qt1_rank3, qt2_rank1: @circle_rank.qt2_rank1, qt2_rank2: @circle_rank.qt2_rank2, qt2_rank3: @circle_rank.qt2_rank3, qt3_rank1: @circle_rank.qt3_rank1, qt3_rank2: @circle_rank.qt3_rank2, qt3_rank3: @circle_rank.qt3_rank3 } }
    end

    assert_redirected_to circle_rank_url(CircleRank.last)
  end

  test "should show circle_rank" do
    get circle_rank_url(@circle_rank)
    assert_response :success
  end

  test "should get edit" do
    get edit_circle_rank_url(@circle_rank)
    assert_response :success
  end

  test "should update circle_rank" do
    patch circle_rank_url(@circle_rank), params: { circle_rank: { qestion1: @circle_rank.qestion1, qestion2: @circle_rank.qestion2, qestion3: @circle_rank.qestion3, qt1_rank1: @circle_rank.qt1_rank1, qt1_rank2: @circle_rank.qt1_rank2, qt1_rank3: @circle_rank.qt1_rank3, qt2_rank1: @circle_rank.qt2_rank1, qt2_rank2: @circle_rank.qt2_rank2, qt2_rank3: @circle_rank.qt2_rank3, qt3_rank1: @circle_rank.qt3_rank1, qt3_rank2: @circle_rank.qt3_rank2, qt3_rank3: @circle_rank.qt3_rank3 } }
    assert_redirected_to circle_rank_url(@circle_rank)
  end

  test "should destroy circle_rank" do
    assert_difference('CircleRank.count', -1) do
      delete circle_rank_url(@circle_rank)
    end

    assert_redirected_to circle_ranks_url
  end
end
