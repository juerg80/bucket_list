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

  # test "log in does not create a User" do
  #   visit(new_user_path)
  #   fill_in('Email address', with: 'my_test_mail@test.ch')
  #   click_on('Log in')
  #
  #   visit(new_user_path)
  #   fill_in('Email address', with: 'my_test_mail@test.ch')
  #   click_on('Log in')
  #
  #   assert (User.all.length >= 1)
  # end

  test "comments cannot be added when not logged in" do
    visit new_idea_path
    fill_in('Title', with: 'Run Marathon')
    fill_in('Done count', with: 98)
    fill_in('Photo url', with: 'turtle.jpg')
    fill_in('Description', with: 'Running is always fun')
    click_on('Create Idea')

    visit(ideas_path)
    click_on('Run Marathon', match: :first)
    assert_not page.has_content?('Add a comment')
  end
end
