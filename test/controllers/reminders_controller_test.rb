require 'test_helper'

class RemindersControllerTest < ActionController::TestCase
  test "should get reminder_done" do
    get :reminder_done
    assert_response :success
  end

end
