FactoryBot.define do
  factory :post do
    title { 'Sample Title' } # Default title, change as needed
    text { 'This is a sample post.' } # Default text, change as needed
    comment_counter { 0 } # Default comment_counter value, change as needed
    like_counter { 0 } # Default like_counter value, change as needed
    association :author, factory: :user # Establishing an association with the User factory
  end
end
