require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get question" do
    get static_pages_question_url
    assert_response :success
  end

  test "should get news" do
    get static_pages_news_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end
end
