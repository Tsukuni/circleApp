require 'test_helper'

class FashionRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fashion_rank = fashion_ranks(:one)
  end

  test "should get index" do
    get fashion_ranks_url
    assert_response :success
  end

  test "should get new" do
    get new_fashion_rank_url
    assert_response :success
  end

  test "should create fashion_rank" do
    assert_difference('FashionRank.count') do
      post fashion_ranks_url, params: { fashion_rank: { content: @fashion_rank.content, men_rank1: @fashion_rank.men_rank1, men_rank2: @fashion_rank.men_rank2, men_rank3: @fashion_rank.men_rank3, qestion1: @fashion_rank.qestion1, qestion2: @fashion_rank.qestion2, qt2_rank1: @fashion_rank.qt2_rank1, qt2_rank2: @fashion_rank.qt2_rank2, qt2_rank3: @fashion_rank.qt2_rank3, women_rank1: @fashion_rank.women_rank1, women_rank2: @fashion_rank.women_rank2, women_rank3: @fashion_rank.women_rank3 } }
    end

    assert_redirected_to fashion_rank_url(FashionRank.last)
  end

  test "should show fashion_rank" do
    get fashion_rank_url(@fashion_rank)
    assert_response :success
  end

  test "should get edit" do
    get edit_fashion_rank_url(@fashion_rank)
    assert_response :success
  end

  test "should update fashion_rank" do
    patch fashion_rank_url(@fashion_rank), params: { fashion_rank: { content: @fashion_rank.content, men_rank1: @fashion_rank.men_rank1, men_rank2: @fashion_rank.men_rank2, men_rank3: @fashion_rank.men_rank3, qestion1: @fashion_rank.qestion1, qestion2: @fashion_rank.qestion2, qt2_rank1: @fashion_rank.qt2_rank1, qt2_rank2: @fashion_rank.qt2_rank2, qt2_rank3: @fashion_rank.qt2_rank3, women_rank1: @fashion_rank.women_rank1, women_rank2: @fashion_rank.women_rank2, women_rank3: @fashion_rank.women_rank3 } }
    assert_redirected_to fashion_rank_url(@fashion_rank)
  end

  test "should destroy fashion_rank" do
    assert_difference('FashionRank.count', -1) do
      delete fashion_rank_url(@fashion_rank)
    end

    assert_redirected_to fashion_ranks_url
  end
end
