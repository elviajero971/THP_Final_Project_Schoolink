class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_commentable, except: :destroy

  def new
    @comment = Comment.new
  end

  def create
    @subject = Subject.find_by(slug: params[:id])
    @comment = @commentable.comments.new(content: params[:comment][:content], commentable_type: params[:commentable_type], commentable_id: params[:commentable_id], user_id: current_user.id)
    if @comment.save
      flash[:success] = "Votre commentaire a bien été ajouté !"
      redirect_back(fallback_location: root_path)
    else
      redirect_to subject_path(Subject.find_by(slug: params[:subject_id]))
      flash[:alert] = "#{params[:content]}"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy if @comment
    flash[:success] = "Votre commentaire a bien été supprimé !"
    redirect_back(fallback_location: root_path)
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
