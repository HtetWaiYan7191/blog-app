class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_likes(count)
    post.update(like_counter: count)
  end
end
