require 'test_helper'

class Blog::ProgrammsControllerTest < ActionController::TestCase
  setup do
    @blog_programm = blog_programms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_programms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_programm" do
    assert_difference('Blog::Programm.count') do
      post :create, blog_programm: { content: @blog_programm.content, tags: @blog_programm.tags, title: @blog_programm.title }
    end

    assert_redirected_to blog_programm_path(assigns(:blog_programm))
  end

  test "should show blog_programm" do
    get :show, id: @blog_programm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_programm
    assert_response :success
  end

  test "should update blog_programm" do
    patch :update, id: @blog_programm, blog_programm: { content: @blog_programm.content, tags: @blog_programm.tags, title: @blog_programm.title }
    assert_redirected_to blog_programm_path(assigns(:blog_programm))
  end

  test "should destroy blog_programm" do
    assert_difference('Blog::Programm.count', -1) do
      delete :destroy, id: @blog_programm
    end

    assert_redirected_to blog_programms_path
  end
end
