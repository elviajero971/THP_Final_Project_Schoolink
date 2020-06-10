class JoinReadSubjectController < ApplicationController

  def update
    @subject = Subject.find_by(id: params[:id])
    new_read = JoinReadSubject.create(subject_id: @subject.id, user_id:current_user.id)
  end

  def destroy
    @subject = Subject.find_by(id: params[:id])
    read_to_destroy = JoinReadSubject.find_by(subject_id: @subject.id, user_id: current_user.id).destroy
  end

end
