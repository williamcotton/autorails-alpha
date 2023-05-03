require "application_system_test_case"

class ArticleControllersTest < ApplicationSystemTestCase
  setup do
    @article_controller = article_controllers(:one)
  end

  test "visiting the index" do
    visit article_controllers_url
    assert_selector "h1", text: "Article controllers"
  end

  test "should create article controller" do
    visit article_controllers_url
    click_on "New article controller"

    fill_in "Body", with: @article_controller.body
    fill_in "Description", with: @article_controller.description
    check "Ispublished" if @article_controller.isPublished
    fill_in "Publishedat", with: @article_controller.publishedAt
    fill_in "Title", with: @article_controller.title
    click_on "Create Article controller"

    assert_text "Article controller was successfully created"
    click_on "Back"
  end

  test "should update Article controller" do
    visit article_controller_url(@article_controller)
    click_on "Edit this article controller", match: :first

    fill_in "Body", with: @article_controller.body
    fill_in "Description", with: @article_controller.description
    check "Ispublished" if @article_controller.isPublished
    fill_in "Publishedat", with: @article_controller.publishedAt
    fill_in "Title", with: @article_controller.title
    click_on "Update Article controller"

    assert_text "Article controller was successfully updated"
    click_on "Back"
  end

  test "should destroy Article controller" do
    visit article_controller_url(@article_controller)
    click_on "Destroy this article controller", match: :first

    assert_text "Article controller was successfully destroyed"
  end
end
