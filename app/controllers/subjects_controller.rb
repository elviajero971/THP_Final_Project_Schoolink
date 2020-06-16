class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  def index
    @subjects = Subject.all
    @users = User.all
    @categories = Category.all
    @query = "%#{params[:query]}%"

    if params[:category] && params[:category][:name].empty? == false
      @cat = "#{Category.find_by(name: params[:category][:name]).id}"
    end
    
    if params[:category] && params[:category][:name].empty? == true && params[:query]
      @subjects = Subject.where("title LIKE ?", @query)
    elsif params[:category] && params[:category][:name] && params[:query]
      @subjects = Subject.where("category_id = ? AND title LIKE ?", @cat, @query)
    end
  end

  def show
    @subject = Subject.friendly.find(params[:id])
    @user = User.find(@subject.user_id)
  end

  def new
    @subject = Subject.new
    @subjects = Subject.all
    @categories = Category.all
  end

  def edit
    @subject = Subject.friendly.find(params[:id])
    if current_user.id != @subject.user_id
      redirect_to subject_path
    end
    @categories = Category.all
  end

  def create
    @categories = Category.all
    @subject = Subject.new(title: params[:title], content: params[:content], user_id: current_user.id, category_id: params[:category_id],difficulty: params[:difficulty])
    if @subject.valid? == false 
      flash.now[:alert] = "Attention votre ressource n'a pas pû être créée. Il doit manquer le titre, le contenu, la difficulté ou la catégorie !"
      render :new
    else
      if @subject.save
        flash[:success] = "Votre ressource a bien été créée !"
        redirect_to @subject
      else
        render :new
      end
    end
  end

  def update
    @categories = Category.all
    @subject = Subject.friendly.find(params[:id])
    if @subject.update(subject_params)
      flash[:success] = "Votre ressource a bien été modifiée !"
      redirect_to subject_path(@subject.slug)
    else
      flash.now[:alert] = "Attention votre ressource n'a pas pû être modifiée. Il doit manquer le titre, le contenu, la difficulté ou la catégorie !"
      render :edit
    end  
  end

  def destroy
    @subject = Subject.friendly.find(params[:id])
    if @subject.destroy
      redirect_to "/" 
      flash[:success] = "Votre ressource a bien été supprimé !"
    else
      flash.now[:alert] = "Attention votre ressource n'a pas pu être supprimée. Veuillez réessayer."
      render :new
    end  
  end

  private

    def set_subject
      @subject = Subject.friendly.find(params[:id])
    end

    def subject_params
      params.require(:subject).permit(:title, :content, :category_id, :difficulty)
    end
end
