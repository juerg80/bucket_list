require "application_system_test_case"

class IdeasTest < ApplicationSystemTestCase
 #  test 'create new ideas' do
 #   visit new_idea_path
 #   fill_in('Title', with: 'Run Marathon')
 #   fill_in('Done_this', with: 98)
 #   fill_in('Photo_url', with: 'turtle.jpg')
 #   click_on('Create Idea')
 #   visit ideas_path
 #   assert page.has_content?('Run Marathon')
 # end

 # test 'create new Idea' do
 #
 #   my_idea = Idea.new
 #   my_idea.title = "my title"
 #   my_idea.done_count = 99
 #   my_idea.photo_url = "turtle.jpg"
 #   my_idea.save!
 #
 #   visit(edit_idea_path(my_idea))
 # end

 # test 'search' do
 #   visit new_idea_path
 #   fill_in('title', with: 'Climb Mont Blanc')
 #   click_on('Create idea')
 #   visit new_idea_path
 #   fill_in('title', with: 'Visit Niagara Falls')
 #   click_on('Create idea')
 #   visit('/')
 #   fill_in('global-search-input', with: 'Mont')
 #   click_on('Search', match: :first)
 #   assert current_path.include?(ideas_path)
 #   assert page.has_content?('Climb Mont Blanc')
 #   assert_not page.has_content?('Visit Niagara Falls')
 # end

 # test 'search' do
 #   visit ideas_path(q: 'foo')
 #   assert page.has_content?('No ideas found!')
 # end



end
