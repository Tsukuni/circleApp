require 'test_helper'

class TripRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_rank = trip_ranks(:one)
  end

  test "should get index" do
    get trip_ranks_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_rank_url
    assert_response :success
  end

  test "should create trip_rank" do
    assert_difference('TripRank.count') do
      post trip_ranks_url, params: { trip_rank: { content: @trip_rank.content, qestion1: @trip_rank.qestion1, qt1_rank1: @trip_rank.qt1_rank1, qt1_rank2: @trip_rank.qt1_rank2, qt1_rank3: @trip_rank.qt1_rank3 } }
    end

    assert_redirected_to trip_rank_url(TripRank.last)
  end

  test "should show trip_rank" do
    get trip_rank_url(@trip_rank)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_rank_url(@trip_rank)
    assert_response :success
  end

  test "should update trip_rank" do
    patch trip_rank_url(@trip_rank), params: { trip_rank: { content: @trip_rank.content, qestion1: @trip_rank.qestion1, qt1_rank1: @trip_rank.qt1_rank1, qt1_rank2: @trip_rank.qt1_rank2, qt1_rank3: @trip_rank.qt1_rank3 } }
    assert_redirected_to trip_rank_url(@trip_rank)
  end

  test "should destroy trip_rank" do
    assert_difference('TripRank.count', -1) do
      delete trip_rank_url(@trip_rank)
    end

    assert_redirected_to trip_ranks_url
  end
end
