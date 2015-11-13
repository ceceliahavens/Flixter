FactoryGirl.define do  factory :lesson do
    
  end
 factory :enrollment do
end

  factory :user do
    sequence :email do |n|
    	"usertest#{n}@testloopbackdomain.com"
    end
    password "testmetestme"
    password_confirmation "testmetestme"
	end
end 