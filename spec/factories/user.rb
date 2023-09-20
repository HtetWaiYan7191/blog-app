# spec/factories/user.rb

FactoryBot.define do
  factory :user do
    name { 'John Doe' } # Default name, change as needed
    photo { 'https://example.com/default.jpg' } # Default photo URL, change as needed
    bio { 'This is a sample bio.' } # Default bio, change as needed
    post_counter { 0 } # Default post_counter value, change as needed
  end
end
