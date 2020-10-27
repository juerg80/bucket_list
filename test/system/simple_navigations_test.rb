require "application_system_test_case"

class SimpleNavigationsTest < ApplicationSystemTestCase
  # test 'search term is displayed' do
  #   visit(root_path)
  #   assert page.has_content?('Bucket List')
  #   fill_in('q', with: 'Spain').send_keys(:enter)
  #   assert has_content?('Spain')
  #   assert current_url.include?('q=Spain')
  # end

  test 'style guide navigation' do
    visit('/')
    click_on('Style Guide', match: :first)
    assert has_content?('Atoms')
    assert has_content?('Molecules')
    assert has_content?('Organisms')
  end
end
