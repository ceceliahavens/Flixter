FactoryGirl.define do  
	
#   factory :lesson do
# end

  factory :user do
    sequence :email do |n|
    	"ilikemakingcrapup#{n}@gmail.com"
    end
    password "testonetwotesting"
    password_confirmation "testonetwotesting"
	end
end
FactoryGirl.define do 
	factory :course do
		title "Tacocat"
		description "It's a palindrome, ya dig?!"
		cost 800
		association :user
	end
end 