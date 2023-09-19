class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  def update_posts_counter(count)
    author.increment!(:post_counter)
  end

  def recent_comments(limit = 5)
    comments.last(limit)
  end
end
