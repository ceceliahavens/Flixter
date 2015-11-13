require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
 test "course created with user auth." do
		user = FactoryGirl.create(:user)
		sign_in user
		course = FactoryGirl.create(:course, :user => user)

		assert_difference 'Course.count' do
			post :create, :course => {title: course.title, description: course.description, cost: course.cost}
	end

	#test "show new course page" do
	end
end
