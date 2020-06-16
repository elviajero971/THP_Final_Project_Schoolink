class CommentDislikesController < ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    destroy_it = nil

    CommentDislike.all.each do |dislike|
      if dislike.user_id == current_user.id && dislike.comment_id == @comment.id
        destroy_it = dislike
      end
    end

    if destroy_it == nil 
      CommentDislike.create(user_id: current_user.id, comment_id: @comment.id)
    else 
      destroy_it.destroy
    end
  end

end
