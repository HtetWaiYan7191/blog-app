require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'yanyan', photo: 'yanyanphoto', bio: 'software developer', post_counter: 5) }

  before { subject.save }

  it 'name must not be blank' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'post counter must be an integer' do
    subject.post_counter = 'postcounter'
    expect(subject).to_not be_valid
  end
end
