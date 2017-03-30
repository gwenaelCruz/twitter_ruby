require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @user = users(:one)
  end

  test "get user" do
    assert_equal(User.count, 2)
  end

  test "new user" do
    user = User.new
    assert_not user.save
    user.name='Test'
    assert user.save
  end


  test "delete user" do
    user = User.find_by_name("Test1")
    assert user.destroy
  end
end
