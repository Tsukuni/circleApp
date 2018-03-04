require 'test_helper'

class JobRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_rank = job_ranks(:one)
  end

  test "should get index" do
    get job_ranks_url
    assert_response :success
  end

  test "should get new" do
    get new_job_rank_url
    assert_response :success
  end

  test "should create job_rank" do
    assert_difference('JobRank.count') do
      post job_ranks_url, params: { job_rank: { content: @job_rank.content, qestion1: @job_rank.qestion1, qestion2: @job_rank.qestion2, qt1_rank1: @job_rank.qt1_rank1, qt1_rank2: @job_rank.qt1_rank2, qt1_rank3: @job_rank.qt1_rank3, qt2_rank1: @job_rank.qt2_rank1, qt2_rank2: @job_rank.qt2_rank2, qt2_rank3: @job_rank.qt2_rank3 } }
    end

    assert_redirected_to job_rank_url(JobRank.last)
  end

  test "should show job_rank" do
    get job_rank_url(@job_rank)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_rank_url(@job_rank)
    assert_response :success
  end

  test "should update job_rank" do
    patch job_rank_url(@job_rank), params: { job_rank: { content: @job_rank.content, qestion1: @job_rank.qestion1, qestion2: @job_rank.qestion2, qt1_rank1: @job_rank.qt1_rank1, qt1_rank2: @job_rank.qt1_rank2, qt1_rank3: @job_rank.qt1_rank3, qt2_rank1: @job_rank.qt2_rank1, qt2_rank2: @job_rank.qt2_rank2, qt2_rank3: @job_rank.qt2_rank3 } }
    assert_redirected_to job_rank_url(@job_rank)
  end

  test "should destroy job_rank" do
    assert_difference('JobRank.count', -1) do
      delete job_rank_url(@job_rank)
    end

    assert_redirected_to job_ranks_url
  end
end
