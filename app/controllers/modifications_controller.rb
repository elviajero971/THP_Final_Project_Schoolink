class ModificationsController < ApplicationController
  before_action :set_modification, only: [:show, :edit, :update, :destroy]

  def index 

  end

  def new 
    @modification = Modification.new
  end

  def create 
    @modification = Modification.new(user_id: User.find_by(slug: params[:user_id]).id, content: params[:content], )
    if @modification.save
      flash[:success] = "Votre message a bien été envoyé à l'auteur !"
      redirect subject_path(Subject.find_by(id: @modification.subject_id).slug)
    else
      render :new
    end
  end

  def destroy

  end

  private

    def set_modification
      @modification = Modification.find(params[:id])
    end

    def modification_params
      params.require(:modification).permit(:content, :user_id, :subject_id)
    end

end
