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
    @user = User.find(@subject.user_id)
  end

  def new
    @subject = Subject.new
    @subjects = Subject.all
    @subcategories = SubCategory.all
  end

  def edit
  end

  def create
    @subject = Subject.new(title: params[:title], content: params[:content], user_id: current_user.id, sub_category_id: params[:sub_category_id],difficulty: params[:difficulty] )
      if @subject.save
        redirect_to @subject, notice: 'Subject was successfully created.'
      else
        render :new
      end
  end

  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject }
      else
        format.html { render :edit }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_subject
      @subject = Subject.find(params[:id])
    end

    def subject_params
      params.require(:subject).permit(:title, :content, :sub_category_id)
    end
end
