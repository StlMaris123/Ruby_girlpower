require 'test_helper'

class UserTest < ActiveSupport::TestCase
def setup
   @user = User.new(username: "Maris", email: "maris@gmail.com")
end

test "user should be valid" do
   assert  @user.valid?
end

test "name should be present" do


  #assert_not username.empty?
end

test "email should be valid" do
  #assert email.valid?
end

test "email should be present" do
  #assert_not email.empty?
end
   
end
