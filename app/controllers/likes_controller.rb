class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @post = Post.find(params[:post_id])
    @like = Like.new(user_id: current_user.id, post_id: @post.id)
    # check if the user already liked the post or not 
    existing_like = Like.find_by(user_id: current_user.id, post_id: @post.id)

    if existing_like
      redirect_to user_post_path(user_id: @post.author_id, id: @post.id), notice: 'You have already liked this post'
      return
    end
    if @like.save
      redirect_to user_post_path(user_id: @post.author_id, id: @post.id)
    else
      render :new, alert: 'Cannot add new like'
    end
  end
end
