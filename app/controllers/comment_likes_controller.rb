class CommentLikesController < ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    if @comment.commentable_type == "Subject"
      @subject = Subject.find(@comment.commentable_id)
    elsif @comment.commentable_type == "Comment"
      @commentFather = Comment.find(@comment.commentable_id)
      @subject = Subject.find(@commentFather.commentable_id)
    end
    destroy_like = nil
    destroy_dislike = nil

    CommentDislike.all.each do |dislike|
      if dislike.user_id == current_user.id && dislike.comment_id == @comment.id
        destroy_dislike = dislike
      end
    end

    CommentLike.all.each do |like|
      if like.user_id == current_user.id && like.comment_id == @comment.id
        destroy_like = like
      end
    end

    if destroy_dislike && destroy_like == nil
      destroy_dislike.destroy
      CommentLike.create(user_id: current_user.id, comment_id: @comment.id)
      redirect_to subject_path(@subject.slug, anchor: 'comment-section')
    elsif destroy_dislike == nil && destroy_like == nil
      CommentLike.create(user_id: current_user.id, comment_id: @comment.id)
      redirect_to subject_path(@subject.slug, anchor: 'comment-section')
    elsif destroy_dislike == nil && destroy_like 
      destroy_like.destroy
      redirect_to subject_path(@subject.slug, anchor: 'comment-section')
    end
  end

end
