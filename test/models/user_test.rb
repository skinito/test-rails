require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "prenom_test",last_name: "nom_test", email: "user@example.com", password: "password", password_confirmation: "password")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "first_name should be present" do
    @user.first_name = ""
    assert_not @user.valid?
  end

  test "no space in first_name" do
    @user.first_name = ""
    assert_not @user.valid?
  end
end
