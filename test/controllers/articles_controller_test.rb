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
      post :create, article: { active: @article.active, approved_comments_count: @article.approved_comments_count, body: @article.body, body_html: @article.body_html, cached_tag_list: @article.cached_tag_list, edited_at: @article.edited_at, published_at: @article.published_at, slug: @article.slug, title: @article.title }
    end

    assert_redirected_to article_path(assigns(:article))
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
    patch :update, id: @article, article: { active: @article.active, approved_comments_count: @article.approved_comments_count, body: @article.body, body_html: @article.body_html, cached_tag_list: @article.cached_tag_list, edited_at: @article.edited_at, published_at: @article.published_at, slug: @article.slug, title: @article.title }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end
end
