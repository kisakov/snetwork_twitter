require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get add_account" do
    get :add_account
    assert_response :success
  end

  test "should get tweets" do
    get :tweets
    assert_response :success
  end

end
