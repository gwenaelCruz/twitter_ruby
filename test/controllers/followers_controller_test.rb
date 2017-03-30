require 'test_helper'

class FollowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create follower" do
    assert_difference('Follower.count') do
      post users_url, params: { user: { img_url: @user.img_url, name: @user.name } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show follower" do
    get user_url(@user)
    assert_response :success
  end

  test "should destroy follower" do
    assert_difference('Follower.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
