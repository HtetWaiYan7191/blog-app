require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: 'test title', text: 'test text', comment_counter: 1, like_counter: 1) }

  before { subject.save }

  it 'title must not be blank' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'title must not exceed 250 characters ' do
    subject.title = 'a' * 251
    expect(subject).to_not be_valid
  end

  it 'comment counter must be integer greater than or equal to zero' do
    subject.comment_counter = -1
    expect(subject).to_not be_valid
  end

  it 'like counter must be integer greater than or equal to zero' do
    subject.like_counter = -1
    expect(subject).to_not be_valid
  end
end
