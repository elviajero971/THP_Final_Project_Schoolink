class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @subject = Subject.friendly.find(params[:id])
    @comment = @subject.comments.create(params[:comment].permit(:body).merge(user_id: current_user.id))

    redirect_to subject_path(@subject)
  end

  def destroy
    @subject = Subject.friendly.find(params[:id])
    @comment = @subject.comments.find(params[:id])
    @comment.destroy
    redirect_to subject_path(@subject)
  end

  def edit
    @comment = Comment.find(params[:id])
  end
end
