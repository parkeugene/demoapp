require 'test_helper'

class ArticleFlowTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert true
  end

  test "all input fields in the form have a name" do
    get "/articles/new"
    assert_response :success
    assert_select "form input" do
     assert_select "[name=?]", /.+/  # Not empty
    end
  end

  test "can create an article" do
    post "/articles", article: { title: "can create", body: "article successfully." }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Title:\n  can create"
  end
end
