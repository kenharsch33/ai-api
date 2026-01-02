require "test_helper"

class UserTest < ActiveSupport::TestCase
  # Use fixtures to quickly create test data (optional but recommended)
  # fixtures loaded from test helper

  test "the truth" do
    assert true
  end

  test "user_count" do
    assert_equal 2, User.count
  end

  test "an admin user should be an admin" do
    assert users(:admin).admin?, "Admin user did not return true for admin?"
  end

  test "a normal user should not be an admin" do
    refute users(:user).admin?, "Normal user returned true for admin?"
  end

end


