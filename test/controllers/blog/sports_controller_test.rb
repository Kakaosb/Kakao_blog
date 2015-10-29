require 'test_helper'

class Blog::SportsControllerTest < ActionController::TestCase
  setup do
    @blog_sport = blog_sports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_sports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_sport" do
    assert_difference('Blog::Sport.count') do
      post :create, blog_sport: { content: @blog_sport.content, tags: @blog_sport.tags, title: @blog_sport.title }
    end

    assert_redirected_to blog_sport_path(assigns(:blog_sport))
  end

  test "should show blog_sport" do
    get :show, id: @blog_sport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_sport
    assert_response :success
  end

  test "should update blog_sport" do
    patch :update, id: @blog_sport, blog_sport: { content: @blog_sport.content, tags: @blog_sport.tags, title: @blog_sport.title }
    assert_redirected_to blog_sport_path(assigns(:blog_sport))
  end

  test "should destroy blog_sport" do
    assert_difference('Blog::Sport.count', -1) do
      delete :destroy, id: @blog_sport
    end

    assert_redirected_to blog_sports_path
  end
end
