class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  # GET /subjects
  # GET /subjects.json
  def index
    @subcategories = SubCategory.all
    @users = User.all
    @categories = Category.all

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

  def show
    @subject = Subject.find_by(id: params[:id])
    @user = User.find(@subject.user_id)
    @subject = Subject.find_by(id: params[:id])
  end

  def new
    @subject = Subject.new
    @subjects = Subject.all
    @subcategories = SubCategory.all
  end

  def edit
    @subcategories = SubCategory.all
  end

  def create
    @subject = Subject.new(title: params[:title], content: params[:content], user_id: current_user.id, sub_category_id: params[:sub_category_id],difficulty: params[:difficulty] )
      if @subject.save
        flash[:success] = "Votre ressource a bien été créée !"
        redirect_to @subject
      else
        flash.now[:alert] = "Attention votre ressource n'a pas pû être créée. Veuillez ré-essayer."
        render :new
      end
  end

  def update
    @subject = Subject.find_by(id:params[:id])
    @subject.update(subject_params)
    redirect_to subject_path(@subject.id)
  end

  def destroy
    @subject = Subject.find_by(id:params[:id])
    @subject.destroy
    redirect_to root_path
  end

  private

    def set_subject
      @subject = Subject.find(params[:id])
    end

    def subject_params
      params.require(:subject).permit(:title, :content, :sub_category_id, :difficulty)
    end
end
