class AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
      @item = Item.find(params[:item_id])
      @comment = @item.comments.create(params[:comment].permit(:body).merge(user_id: current_user.id))

      respond_to do |format|
          format.html { redirect_to item_path(@item) }
          format.js { }
      end
  end

  def destroy
      @item = Item.find(params[:item_id])
      @comment = @item.comments.find(params[:id])
      @comment.destroy
      redirect_to item_path(@item)
  end

  def edit
      @comment = Comment.find(params[:id])
  end
end
