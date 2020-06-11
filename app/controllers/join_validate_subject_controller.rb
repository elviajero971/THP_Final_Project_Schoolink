class JoinValidateSubjectController < ApplicationController

  def update
    @subject = Subject.find_by(id: params[:id])
    new_val = JoinValidateSubject.create(subject_id: @subject.id, user_id:current_user.id)

    respond_to do |format|
      format.html { }
      format.js { }
    end
  end

  def destroy
    @subject = Subject.find_by(id: params[:id])
    validate_to_destroy = JoinValidateSubject.find_by(subject_id: @subject.id, user_id: current_user.id).destroy

    respond_to do |format|
      format.html { }
      format.js { }
    end
  end

end
