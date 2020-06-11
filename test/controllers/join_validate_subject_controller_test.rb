require 'test_helper'

class JoinValidateSubjectControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get join_validate_subject_update_url
    assert_response :success
  end

  test "should get destroy" do
    get join_validate_subject_destroy_url
    assert_response :success
  end

end
