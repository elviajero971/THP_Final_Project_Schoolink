class UsersController < ApplicationController

  def show
    @user = User.friendly.find(params[:id])
  end

  def edit
    @user = User.friendly.find(params[:id])
  end

  def update
    @user = current_user
    user_params =  params.require(:user).permit(:nickname, :email, :password, :description)
    if @user.update(user_params)
      flash[:success] = "Votre profil a bien été modifié !"
        redirect_to user_path(@user.slug)
    else
      flash.now[:error] = "Erreur de saisie, veuillez renouveler votre demande"
      render :new
    end  
  end
end
