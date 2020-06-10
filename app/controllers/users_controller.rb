class UsersController < ApplicationController

  def show
      @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    user_params =  params.require(:user).permit(:nickname, :email, :password)
    if @user.update(user_params)
      flash[:success] = "Votre profil a bien été modifié"
        redirect_to user_path(@user.id)
    else
      flash.now[:error] = "Erreur de saisie, veuillez renouveler votre demande"
      render :new
    end  
  end
end
