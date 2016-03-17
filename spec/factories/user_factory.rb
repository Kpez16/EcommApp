FactoryGirl.define do
    
    sequence(:email) { |n| "user#{n}@example.com" }
    
    factory :user do
        email "kpez16@gmail.com"
        password "mypassword"
        first_name "Kyle"
        last_name "Pezant"
        admin false
    end
    
    factory :admin, class: User do
        email
        password "mypassword"
        admin true
        first_name "Admin"
        last_name "User"
    end
    
end

