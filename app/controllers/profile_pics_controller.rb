class ProfilePicsController < ApplicationController

    def create
      @user = User.find_by(slug: params[:user_id])
      @user.profile_pic.attach(params[:profile_pic])
      flash[:success] = "Vous avez changé votre photo de profil !"
      redirect_to(user_path(@user))
    end 
end


