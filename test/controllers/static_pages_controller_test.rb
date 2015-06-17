require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  setup do
    @app_title = 'Ruby on Rails Tutorial Sample App'
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@app_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@app_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@app_title}"
  end
end
