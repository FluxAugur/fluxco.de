FactoryGirl.define do
  factory :user do
    name 'Test User'
    first_name 'Test'
    last_name 'User'
    email 'testuser@example.com'
    password 'changeme'
    password_confirmtion 'changeme'
    confirmed_at Time.now
  end
end
