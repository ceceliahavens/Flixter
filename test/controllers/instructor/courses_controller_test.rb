require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
 test "add class requires authenticated user" do
		user = FactoryGirl.create(:user)
		get :new, :id => user.id
		assert_redirected_to new_user_session_path
	end

	test "show new course page" do
	end
end
