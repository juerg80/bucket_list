require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  # test "change ass. idea for comment" do
  #   first_idea = Idea.new
  #   first_idea.title = 'Stay in a Swiss refuge in the mountains'
  #   first_idea.description = 'Stay in a Swiss refuge in the mountains'
  #   first_idea.done_count = 10
  #   first_idea.photo_url = 'turtle.jpg'
  #   first_idea.save!
  #
  #   first_comment = Comment.new
  #   first_comment.body = 'This is great'
  #   first_comment.idea = first_idea
  #   first_comment.save!
  #
  #   second_idea = Idea.new
  #   second_idea.title = 'Stay in a Italian refuge in the mountains'
  #   second_idea.description = 'Stay in a Italian refuge in the mountains'
  #   second_idea.done_count = 15
  #   second_idea.photo_url = 'turtle.jpg'
  #   second_idea.save!
  #
  #   first_comment.idea = second_idea
  #   first_comment.save!
  #
  #   assert_equal(first_comment.idea, second_idea)
  # end

  # test "cascading save" do
  #   first_idea = Idea.new
  #   first_idea.title = 'Stay in a Swiss refuge in the mountains'
  #   first_idea.description = 'Stay in a Swiss refuge in the mountains'
  #   first_idea.done_count = 10
  #   first_idea.photo_url = 'turtle.jpg'
  #   first_idea.save!
  #
  #   first_comment = Comment.new
  #   first_comment.body = 'This is great'
  #   first_comment.idea = first_idea
  #
  #   first_idea.comments.push(first_comment)
  #   first_idea.save!
  #
  #   assert_equal(first_comment, first_comment)
  # end

  test "comments correctly ordered" do
    first_idea = Idea.new
    first_idea.title = 'Stay in a Swiss refuge in the mountains'
    first_idea.description = 'Stay in a Swiss refuge in the mountains'
    first_idea.done_count = 10
    first_idea.photo_url = 'turtle.jpg'
    first_idea.save!

    first_comment = Comment.new
    first_comment.body = 'This is great'

    second_comment = Comment.new
    second_comment.body = 'This is fantastic'

    first_idea.comments.push(first_comment)
    first_idea.comments.push(second_comment)
    first_idea.save!

    assert_equal(first_idea.comments.first, first_comment)
    assert_equal(first_idea.comments.length,2)
  end

end
