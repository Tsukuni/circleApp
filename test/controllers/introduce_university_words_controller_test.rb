require 'test_helper'

class IntroduceUniversityWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get introduce_university_words_index_url
    assert_response :success
  end

  test "should get new" do
    get introduce_university_words_new_url
    assert_response :success
  end

  test "should get index" do
    get introduce_university_words_index_url
    assert_response :success
  end

end
