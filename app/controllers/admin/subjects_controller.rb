class Admin::SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  def edit
    @subject = Subject.friendly.find(params[:id])
    @categories = Category.all
  end

  def update
    @categories = Category.all
    @subject = Subject.friendly.find(params[:id])
    if @subject.update(subject_params)
      flash[:success] = "Cette ressource a bien été modifiée !"
      redirect_to subject_path(@subject.slug)
    else
      flash.now[:alert] = "Attention votre ressource n'a pas pû être modifiée. Il doit manquer le titre, le contenu, la difficulté ou la catégorie !"
      render :edit
    end  
  end

  def destroy
    @subject = Subject.friendly.find(params[:id])
    if @subject.destroy
      redirect_to admin_dashboard_index_path
      flash[:success] = "Cette ressource a bien été supprimé !"
    else
      flash.now[:alert] = "Attention votre ressource n'a pas pu être supprimée. Veuillez réessayer."
      render :new
    end  
  end

  private

    def set_subject
      @subject = Subject.friendly.find(params[:id])
    end

    def subject_params
      params.require(:subject).permit(:title, :content, :category_id, :difficulty)
    end
end