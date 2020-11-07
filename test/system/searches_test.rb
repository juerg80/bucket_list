require "application_system_test_case"

class SearchesTest < ApplicationSystemTestCase
  test 'search_test' do
    Idea.all.each do |idea|
     idea.destroy
    end

    my_idea = Idea.new
    my_idea.title = "Go cycling across Europe"
    my_idea.description = 'An amazing way to see lots of Europe'
    my_idea.save!

    my_idea_2 = Idea.new
    my_idea_2.title = "Visit Provence"
    my_idea_2.description = 'Go to vineyards, go cycling up Mont Ventoux, see the fields of lavender'
    my_idea_2.save!

    my_idea_3 = Idea.new
    my_idea_3.title = "Overnight hike in Switzerland"
    my_idea_3.description = 'Stay in a Swiss refuge in the mountains'
    my_idea_3.save!

    visit('/')
    fill_in('q', with: 'cycling')
    click_on('Search', match: :first)

    assert page.has_content?('Go cycling across Europe')
    assert page.has_content?('Visit Provence')
    assert_not page.has_content?('Overnight hike in Switzerland')
  end
end
