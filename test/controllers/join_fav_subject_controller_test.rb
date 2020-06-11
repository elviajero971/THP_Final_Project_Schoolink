require 'test_helper'

class JoinFavSubjectControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get join_fav_subject_update_url
    assert_response :success
  end

  test "should get destroy" do
    get join_fav_subject_destroy_url
    assert_response :success
  end

end
