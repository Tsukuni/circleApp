require 'test_helper'

class ExamCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exam_comment = exam_comments(:one)
  end

  test "should get index" do
    get exam_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_exam_comment_url
    assert_response :success
  end

  test "should create exam_comment" do
    assert_difference('ExamComment.count') do
      post exam_comments_url, params: { exam_comment: { context: @exam_comment.context } }
    end

    assert_redirected_to exam_comment_url(ExamComment.last)
  end

  test "should show exam_comment" do
    get exam_comment_url(@exam_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_exam_comment_url(@exam_comment)
    assert_response :success
  end

  test "should update exam_comment" do
    patch exam_comment_url(@exam_comment), params: { exam_comment: { context: @exam_comment.context } }
    assert_redirected_to exam_comment_url(@exam_comment)
  end

  test "should destroy exam_comment" do
    assert_difference('ExamComment.count', -1) do
      delete exam_comment_url(@exam_comment)
    end

    assert_redirected_to exam_comments_url
  end
end
