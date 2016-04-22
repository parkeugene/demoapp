require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: { title: 'Some title' }
    end

    assert_redirected_to article_path(Article.last)
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    article = articles(:one)

    patch :update, id: article.id, article: { title: "updated" }

    assert_redirected_to article_path(article)
    # Reload association to fetch updated data and assert that title is updated.
    article.reload
    assert_equal "updated", article.title
  end

  test "should destroy article" do
    article = articles(:one)
    assert_difference('Article.count', -1) do
      delete :destroy, id: article.id
    end

    assert_redirected_to articles_path
  end
end
