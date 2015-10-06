class PostsController < ApplicationController
  def index
    @posts = Post.all
<<<<<<< HEAD
    @posts.each_with_index do |post, index|
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
=======
>>>>>>> master
  end

  def show
  end

  def new
  end

  def edit
  end
end
