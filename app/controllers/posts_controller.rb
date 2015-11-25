class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.map { |p| p == 1 ? post.title = "SPAM" : p }
    @posts.each_with_index do |post,index|
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
