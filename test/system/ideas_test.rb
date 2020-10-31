require "application_system_test_case"

class IdeasTest < ApplicationSystemTestCase
  test 'create new ideas' do
   visit ideas_new_path
   fill_in('title', with: 'Run Marathon')
   fill_in('done_this', with: 98)
   fill_in('photo_url', with: 'turtle.jpg')
   click_on('Create idea')
   visit ideas_index_path
   assert page.has_content?('Run Marathon')
 end
end
