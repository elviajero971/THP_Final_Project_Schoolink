class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @subject = Subject.find_by(slug: params[:id])
    @comment = Comment.new(params[:comment].permit(:user_id, :subject_id, :content))
    if @comment.save
      flash[:success] = "Votre commentaire a bien été ajouté !"
      redirect_to subject_path(Subject.find_by(slug: params[:subject_id]))
    end
  end

  def destroy
    @subject = Subject.find_by(slug: params[:subject_id])
    @comment = @subject.comments.find(params[:id])
    @comment.destroy
    flash[:success] = "Votre commentaire a bien été supprimé !"
    redirect_to subject_path(Subject.find_by(slug: params[:subject_id]))
  end

  def edit
    @comment = Comment.find(params[:id])
  end
end
