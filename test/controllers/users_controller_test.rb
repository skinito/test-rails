require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "should get login" do
    get login_path
    assert_response :success
  end



end
