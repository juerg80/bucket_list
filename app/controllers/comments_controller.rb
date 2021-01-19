class CommentsController < ApplicationController
before_action :ensure_authenticated

  def create
    @idea = Idea.find(params[:idea_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.idea = @idea
    @comment.save!
    puts "Errors: #{@comment.errors.full_messages}"
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
