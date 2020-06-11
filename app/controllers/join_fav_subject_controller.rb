class JoinFavSubjectController < ApplicationController

  def update
    @subject = Subject.friendly.find(params[:id])
    new_fav = JoinFavSubject.create(subject_id: @subject.id, user_id:current_user.id)
  end

  def destroy
    @subject = Subject.friendly.find(params[:id])
    fav_to_destroy = JoinFavSubject.find_by(subject_id: @subject.id, user_id: current_user.id).destroy
  end

end
