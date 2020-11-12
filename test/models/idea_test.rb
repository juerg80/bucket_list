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

  # test 'No matching result' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.title = 'Stand at the top of the Empire State Building'
  #   first_idea.save!
  #   second_idea = Idea.new
  #   second_idea.title = 'Stand on the pyramids'
  #   second_idea.save!
  #
  #   assert_equal Idea.search('Stand').length, 2
  # end

  # test 'No idea exists' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   assert_equal Idea.most_recent.length, 0
  # end

  # test '2 ideas exists' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.title = 'Stand at the top of the Empire State Building'
  #   first_idea.save!
  #   second_idea = Idea.new
  #   second_idea.title = 'Stand on the pyramids'
  #   second_idea.save!
  #
  #   assert_equal Idea.most_recent.length, 2
  #   assert_equal Idea.most_recent[0].title, 'Stand on the pyramids'
  # end

  # test '6 ideas exists' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.title = 'Stand at the top of the Empire State Building'
  #   first_idea.save!
  #   second_idea = Idea.new
  #   second_idea.title = 'Stand on the pyramids'
  #   second_idea.save!
  #   first_idea2 = Idea.new
  #   first_idea2.title = 'title 1'
  #   first_idea2.save!
  #   second_idea2 = Idea.new
  #   second_idea2.title = 'title 2'
  #   second_idea2.save!
  #   first_idea3 = Idea.new
  #   first_idea3.title = 'title 3'
  #   first_idea3.save!
  #   second_idea3 = Idea.new
  #   second_idea3.title = 'title 4'
  #   second_idea3.save!
  #
  #   assert_equal Idea.most_recent.length, 3
  #   assert_equal Idea.most_recent[0].title, 'title 4'
  # end

  # test 'Only description match' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.title = 'Surfing in Portugal'
  #   first_idea.description = 'See what Atlantic coast waves are like!'
  #   first_idea.save!
  #
  #   assert_equal Idea.search('coast').length, 1
  # end

  # test 'Description and title match' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.title = 'Overnight hike in Switzerland'
  #   first_idea.description = 'Stay in a Swiss refuge in the mountains'
  #   first_idea.save!
  #
  #   second_idea = Idea.new
  #   second_idea.title = 'Hike the mountains in Italy'
  #   second_idea.description = 'See the Dolomites and Italian Alps'
  #   second_idea.save!
  #
  #   assert_equal Idea.search('mountains').length, 2
  # end

  # test 'Title too long' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.title = 'Overnight hike in Switzerland Overnight hike in Switzerland Overnight hike in Switzerland Overnight hike in Switzerland'
  #   first_idea.description = 'Stay in a Swiss refuge in the mountains'
  #   assert_raise(Exception) { first_idea.save! }
  # end

  # test 'No Title' do
  #   Idea.all.each do |idea|
  #    idea.destroy
  #   end
  #
  #   first_idea = Idea.new
  #   first_idea.description = 'Stay in a Swiss refuge in the mountains'
  #   assert_raise(Exception) { first_idea.save! }
  # end

end
