class Admin::DashboardController < ApplicationController
  before_action :authorized?

  def index
    @user = current_user

    if params[:category] && params[:category][:name]
      @subjects = []
      Subject.all.each do |subject|
        if subject.category == params[:category][:name]
          @subjects << subject
        end
      end
    else 
      @subjects = Subject.all  
    end
  end

  private 

  def authorized?
    if current_user.is_admin == true
      return true
    else
      redirect_to root_path
    end
  end

end
