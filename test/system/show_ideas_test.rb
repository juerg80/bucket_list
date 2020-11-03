require "application_system_test_case"

class ShowIdeasTest < ApplicationSystemTestCase
  # test 'show displays tilte' do
  #   idea = Idea.new
  #   idea.title = 'See northern lights'
  #   idea.save!
  #
  #   visit(show_idea_path(idea))
  #   assert page.has_content?('See northern lights')
  # end

  test 'show idea' do
    my_idea = Idea.new
    my_idea.title = 'climb a palmtree'
    my_idea.done_count = 10
    my_idea.save!

    visit(show_idea_path( my_idea ))
    assert page.has_content?('climb a palmtree')
    # assert page.has_content?(10)
  end
end
