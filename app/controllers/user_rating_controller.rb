class UserRatingController < ApplicationController

  def update
    # @subject = Subject.find_by(id: params[:id])

    # is_there_a_rating_for_this_user = UserRating.find_by(user_id: current_user.id, subject_id: @subject.id)
    # if is_there_a_rating_for_this_user
    #   is_there_a_rating_for_this_user.destroy
    # end

    # new_rating = UserRating.create(user_rating: params[:user_rating], user_id: current_user.id, subject_id: params[:id])
  end

  def destroy
  end

end
