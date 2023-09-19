class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_comments_counter(count)
    post.update(comment_counter: count)
  end
end
