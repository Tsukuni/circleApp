require 'test_helper'

class LifeRankingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @life_ranking = life_rankings(:one)
  end

  test "should get index" do
    get life_rankings_url
    assert_response :success
  end

  test "should get new" do
    get new_life_ranking_url
    assert_response :success
  end

  test "should create life_ranking" do
    assert_difference('LifeRanking.count') do
      post life_rankings_url, params: { life_ranking: { abordrank1: @life_ranking.abordrank1, abordrank2: @life_ranking.abordrank2, abordrank3: @life_ranking.abordrank3, rank1: @life_ranking.rank1, rank2: @life_ranking.rank2, rank3: @life_ranking.rank3 } }
    end

    assert_redirected_to life_ranking_url(LifeRanking.last)
  end

  test "should show life_ranking" do
    get life_ranking_url(@life_ranking)
    assert_response :success
  end

  test "should get edit" do
    get edit_life_ranking_url(@life_ranking)
    assert_response :success
  end

  test "should update life_ranking" do
    patch life_ranking_url(@life_ranking), params: { life_ranking: { abordrank1: @life_ranking.abordrank1, abordrank2: @life_ranking.abordrank2, abordrank3: @life_ranking.abordrank3, rank1: @life_ranking.rank1, rank2: @life_ranking.rank2, rank3: @life_ranking.rank3 } }
    assert_redirected_to life_ranking_url(@life_ranking)
  end

  test "should destroy life_ranking" do
    assert_difference('LifeRanking.count', -1) do
      delete life_ranking_url(@life_ranking)
    end

    assert_redirected_to life_rankings_url
  end
end
