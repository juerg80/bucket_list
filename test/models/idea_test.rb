require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  # test 'the first empty Idea created is first in the list' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.save!
  #   second_idea = Idea.new
  #   second_idea.save!
  #   assert_equal(first_idea, Idea.all.first)
  # end

  # test 'the first complete Idea created is first in the list' do
  #   first_idea = Idea.new
  #   first_idea.title = 'Cycle the length of the United Kingdom'
  #   first_idea.photo_url = 'http://mybucketlist.ch/an_image.jpg'
  #   first_idea.done_count = 12
  #   first_idea.save!
  #   second_idea = Idea.new
  #   second_idea.title = 'Visit Japan'
  #   second_idea.photo_url = 'http://mybucketlist.ch/second_image.jpg'
  #   second_idea.done_count = 3
  #   second_idea.save!
  #   assert_equal(first_idea, Idea.all.first)
  # end
  #
  # test 'updated_at is changed after updating title' do
  #   idea = Idea.new
  #   idea.title = 'Visit Marrakech'
  #   idea.save!
  #   first_updated_at = idea.updated_at
  #   idea.title = 'Visit the market in Marrakech'
  #   idea.save!
  #   refute_equal(idea.updated_at, first_updated_at)
  # end

  # test 'One matching result' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.title = 'Stand at the top of the Empire State Building'
  #   first_idea.save!
  #   assert_equal Idea.search('the top').length, 1
  # end

  # test 'No matching result' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.title = 'Stand at the top of the Empire State Building'
  #   first_idea.save!
  #   assert_equal Idea.search('snorkelling').length, 0
  # end

  test 'No matching result' do
    Idea.all.each do |idea|
     idea.destroy
    end

    first_idea = Idea.new
    first_idea.title = 'Stand at the top of the Empire State Building'
    first_idea.save!
    second_idea = Idea.new
    second_idea.title = 'Stand on the pyramids'
    second_idea.save!

    assert_equal Idea.search('Stand').length, 2
  end

end
