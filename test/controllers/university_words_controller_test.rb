require 'test_helper'

class UniversityWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get university_words_index_url
    assert_response :success
  end

  test "should get edit" do
    get university_words_edit_url
    assert_response :success
  end

end
