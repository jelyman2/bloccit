class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    # TODO: Add SPAM controls
    # TODO: - Update first post to replace title with "SPAM"
    # TODO: - Iterate through posts and every 5th , replace title with "SPAM"
  end

  def edit
  end
end
