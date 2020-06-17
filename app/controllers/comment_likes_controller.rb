class CommentLikesController < ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    destroy_it = nil

    CommentLike.all.each do |like|
      if like.user_id == current_user.id && like.comment_id == @comment.id
        destroy_it = like
      end
    end

    if destroy_it == nil 
      CommentLike.create(user_id: current_user.id, comment_id: @comment.id)
    else 
      destroy_it.destroy
    end
  end

end
