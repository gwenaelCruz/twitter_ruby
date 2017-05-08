require 'test_helper'

class FollowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "get followers" do
    @user = users(:one)
    @followers = @user.followers
    assert_equal(@followers.count, 1)
  end

  test "get followings" do
    @user = users(:two)
    @followings = @user.followings
    assert_equal(@followings.count, 1)
  end

  test "create_followings" do
    @user1 = users(:two)
    @user2 = users(:three)
    @following = Follow.new(follower_id:@user1.id ,followed_id: @user2.id)
    assert @following.save
  end

  test "remove_following" do
    @user = users(:two)
    @follow =Follow.where(follower_id: @user).where(followed_id: 1)
    assert @follow.destroy_all
  end
end
