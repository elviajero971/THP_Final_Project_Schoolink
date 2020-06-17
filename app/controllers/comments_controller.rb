class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_commentable, except: :destroy

  def new
    @comment = Comment.new
  end

 def create
    if params[:subject_id]
      @subject = Subject.find_by(slug: params[:subject_id])
    else 
      comment = Comment.find(params[:comment][:comment_id])
      if comment.commentable_type == "Subject"
        @subject = Subject.find_by(id: comment.commentable_id)
      end
    end

    @comment = @commentable.comments.new(content: params[:comment][:content], commentable_type: params[:commentable_type], commentable_id: params[:commentable_id], user_id: current_user.id)
    if @comment.save
      redirect_to subject_path(@subject.slug, anchor: 'comment-section')
    else
      redirect_to subject_path(Subject.find_by(slug: params[:subject_id]))
      flash[:alert] = "Votre commentaire doit comprendre entre 1 et 350 caractères."
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    if @comment.commentable_type == "Subject"
      @subject = Subject.find(@comment.commentable_id)
    elsif @comment.commentable_type == "Comment"
      @commentFather = Comment.find(@comment.commentable_id)
      @subject = Subject.find(@commentFather.commentable_id)
    end

    @comment.destroy if @comment
    flash[:success] = "Votre commentaire a bien été supprimé !"
    redirect_to subject_path(@subject.slug, anchor: 'comment-section')
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_commentable
    @commentable = Subject.find_by(slug: params[:subject_id]) if params[:subject_id]
    @commentable = Comment.find_by(id: params[:comment][:comment_id]) if params[:comment][:comment_id]
  end
end
