class PostsController < ApplicationController
  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(title: params[:title])
    redirect_to("/")
  end
end
