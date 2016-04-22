require 'test_helper'

class ArticleFlowTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert true
  end

  test "all input fields in the form have a name" do
    get "/articles/new"
    assert_response :success
    assert_select 'form input[name="article[title]"]'
  end

  test "can create an article" do
    get "/articles/new"
    assert_response :success

    post "/articles", article: { title: "can create", body: "article successfully." }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Title:\n  can create"
  end
end
