class JoinFavSubjectController < ApplicationController

  def update
    @subject = Subject.find_by(id: params[:id])
    new_fav = JoinFavSubject.create(subject_id: @subject.id, user_id:current_user.id)
  end

  def destroy
    @subject = Subject.find_by(id: params[:id])
    fav_to_destroy = JoinFavSubject.find_by(subject_id: @subject.id, user_id: current_user.id).destroy
  end

end
