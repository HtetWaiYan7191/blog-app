class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :user
  belongs_to :post

  after_save :update_comments_counter

  private

  def update_comments_counter(count)
    post.update(comment_counter: count)
  end
end
