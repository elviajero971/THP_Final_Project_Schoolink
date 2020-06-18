class ProfilePicsController < ApplicationController

  def create
    @user = User.find_by(slug: params[:user_id])
    if @user.profile_pic.attached?
      @user.profile_pic.purge
      if params[:profile_pic]
        @user.profile_pic.attach(params[:profile_pic])
        flash[:success] = "Vous avez changé votre photo de profil !"
      end
      flash[:success] = "Vous avez supprimé votre photo de profil !"
      redirect_to(user_path(@user))
    else
      @user.profile_pic.attach(params[:profile_pic])
      flash[:success] = "Vous avez changé votre photo de profil !"
      redirect_to(user_path(@user))
    end
  end 
end


