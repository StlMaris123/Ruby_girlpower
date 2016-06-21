require 'test_helper'

class UserTest < ActiveSupport::TestCase
def setup
   @user = User.new(username: "Maris", email: "maris@gmail.com", password: "password", password_confirmation: "password")
end

test "user should be valid" do
   assert  @user.valid?
end

test "name should not be too long" do
  @user.username = "b" * 21
  assert_not @user.valid?
end

test "email should not be too long" do
  @user.email = "b" * 91 + "@gmail.com"
  assert_not @user.valid?
end

#test for presence
test "name should be present" do
  @user.username = "     "
  assert_not @user.valid?
end

test "email should be present" do
  @user.email = "    "
  assert_not @user.valid?
end

#test forformat validity
test "email format should be valid" do
  valid_addresses = %w[cess@gmail.com CE-e_ss@gmil.com CESS@gm.ail.com cE.ss@gma.l]
  valid_addresses.each do |valid_address|
    @user.email = valid_address
    assert @user.valid?, "#{valid_address.inspect} email should be valid"
  end
end
  #test for uniqueness
  test "user email should be unique" do
  duplicate_user = @user.dup
  @user.save
  assert_not duplicate_user.valid?
  end
end


