require "application_system_test_case"

class LogInsTest < ApplicationSystemTestCase
  # test "sign up creates a User" do
  #   visit(new_user_path)
  #   fill_in('Email address', with: 'my_test_mail@test.ch')
  #   click_on('Log in')
  #
  #   assert (User.all.length >= 1)
  #   assert_equal(User.all.first.email, 'my_test_mail@test.ch')
  # end

  test "log in does not create a User" do
    visit(new_user_path)
    fill_in('Email address', with: 'my_test_mail@test.ch')
    click_on('Log in')

    visit(new_user_path)
    fill_in('Email address', with: 'my_test_mail@test.ch')
    click_on('Log in')

    assert (User.all.length >= 1)
  end
end
