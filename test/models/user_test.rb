require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @user = users(:one)
  end

  test "get user" do
    assert_equal(User.count, 3)
  end

  test "new user" do
    user = User.new
    assert_not user.save
    user.name='Test'
    assert user.save
  end


  test "delete user" do
    user = users(:one)
    assert user.destroy
  end
end
