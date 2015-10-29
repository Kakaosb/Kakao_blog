require 'test_helper'

class Blog::ArtsControllerTest < ActionController::TestCase
  setup do
    @blog_art = blog_arts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_arts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_art" do
    assert_difference('Blog::Art.count') do
      post :create, blog_art: { content: @blog_art.content, tags: @blog_art.tags, title: @blog_art.title }
    end

    assert_redirected_to blog_art_path(assigns(:blog_art))
  end

  test "should show blog_art" do
    get :show, id: @blog_art
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_art
    assert_response :success
  end

  test "should update blog_art" do
    patch :update, id: @blog_art, blog_art: { content: @blog_art.content, tags: @blog_art.tags, title: @blog_art.title }
    assert_redirected_to blog_art_path(assigns(:blog_art))
  end

  test "should destroy blog_art" do
    assert_difference('Blog::Art.count', -1) do
      delete :destroy, id: @blog_art
    end

    assert_redirected_to blog_arts_path
  end
end
