class ProfilePicsController < ApplicationController

    def create
      @user = User.find(params[:user_id])
      @user.profile_pic.attach(params[:profile_pic])
      redirect_to(user_path(@user))
    end

end
