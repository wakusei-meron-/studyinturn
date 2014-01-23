require 'test_helper'

class LaunchPageControllerTest < ActionController::TestCase
  test "should get company" do
    get :company
    assert_response :success
  end

  test "should get user" do
    get :user
    assert_response :success
  end

end
