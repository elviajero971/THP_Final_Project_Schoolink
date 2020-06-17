class UsersController < ApplicationController

  def show
    @user = User.find_by(slug: params[:id])
  end

  def edit
    @user = User.friendly.find(params[:id])
    if current_user.id != @user.id
      redirect_to user_path
    end
  end

  def update
    @user = current_user
    user_params =  params.require(:user).permit(:nickname, :email, :password, :description)
    if @user.update(user_params)
      flash[:success] = "Votre profil a bien été modifié !"
        redirect_to user_path(@user.slug)
    else
      flash.now[:alert] = "Erreur : merci de renouveller votre demande"
      render :edit
    end  
  end
end
