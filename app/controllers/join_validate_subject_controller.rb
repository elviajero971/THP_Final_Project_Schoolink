class JoinValidateSubjectController < ApplicationController

  def update
    @subject = Subject.friendly.find(params[:id])
    new_val = JoinValidateSubject.create(subject_id: @subject.id, user_id:current_user.id)
  end

  def destroy
    @subject = Subject.friendly.find(params[:id])
    validate_to_destroy = JoinValidateSubject.find_by(subject_id: @subject.id, user_id: current_user.id).destroy
  end

end
