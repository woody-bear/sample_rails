# test/models/user_test.rb
require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

	test "should be valid" do
		assert @user.valid?
	end

	# name 속성을 검증해보는 테스트
  test "should be valid" do
		@user.name = "     "
    assert @user.valid?
  end
end