class JoinReadSubjectController < ApplicationController

  def update
    @subject = Subject.friendly.find(params[:id])
    new_read = JoinReadSubject.create(subject_id: @subject.id, user_id:current_user.id)

    respond_to do |format|
      format.html { }
      format.js { }
    end
  end

  def destroy
    @subject = Subject.friendly.find(params[:id])
    read_to_destroy = JoinReadSubject.find_by(subject_id: @subject.id, user_id: current_user.id).destroy

    respond_to do |format|
      format.html { }
      format.js { }
    end
  end

end
