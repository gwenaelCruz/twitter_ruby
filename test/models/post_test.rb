require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "get users_posts" do
    @user = users(:one)
    @posts = @user.posts
    assert_equal(@posts.count, 2)
  end

  test "new_post" do
    @user = users(:two)
    @post = Post.new(user_id: @user.id)
    assert_not @post.save
    @post.content = "Hello world"
    assert @post.save
  end

end
