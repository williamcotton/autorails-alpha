require "test_helper"

class ArticleControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_controller = article_controllers(:one)
  end

  test "should get index" do
    get article_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_article_controller_url
    assert_response :success
  end

  test "should create article_controller" do
    assert_difference("ArticleController.count") do
      post article_controllers_url, params: { article_controller: { body: @article_controller.body, description: @article_controller.description, isPublished: @article_controller.isPublished, publishedAt: @article_controller.publishedAt, title: @article_controller.title } }
    end

    assert_redirected_to article_controller_url(ArticleController.last)
  end

  test "should show article_controller" do
    get article_controller_url(@article_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_controller_url(@article_controller)
    assert_response :success
  end

  test "should update article_controller" do
    patch article_controller_url(@article_controller), params: { article_controller: { body: @article_controller.body, description: @article_controller.description, isPublished: @article_controller.isPublished, publishedAt: @article_controller.publishedAt, title: @article_controller.title } }
    assert_redirected_to article_controller_url(@article_controller)
  end

  test "should destroy article_controller" do
    assert_difference("ArticleController.count", -1) do
      delete article_controller_url(@article_controller)
    end

    assert_redirected_to article_controllers_url
  end
end
