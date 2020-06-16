class ModificationsController < ApplicationController
  before_action :set_modification, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
  end

  def new
    @modification = Modification.new
  end

  def show
    @modification = Modification.find(params[:id])
    @subject = Subject.find(params[:subject_id])
  end

  def create
    @modification = Modification.new(user_id: current_user.id, content: params[:content], subject_id: Subject.find_by(slug: params[:subject_id]).id)
    if @modification.save
      flash[:success] = "Votre message a bien été envoyé !"
      redirect_to subject_path(params[:subject_id])
    else
      flash[:alert] = "Votre message n'a pas été envoyé ! Avez-vous écrit un message ?"
      render :new
    end
  end

  def update
    @modification = Modification.find(params[:id])
    @subject = Subject.find_by(slug: params[:subject_id])
    if @modification.done == true
      if @modification.update(done: false)
        redirect_to user_notifications_path(current_user.slug)
      end
    else
      if @modification.update(done: true)
        redirect_to user_notifications_path(current_user.slug)
      end
    end
  end

  def destroy
  end

  private

    def set_modification
      @modification = Modification.find(params[:id])
    end

end
