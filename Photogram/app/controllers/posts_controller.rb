class PostsController < ApplicationController
  def index
    
  end
  
  #upload new image
  def new 
    @post = Post.new
  end
  
  #create action for submitting a post
  def create
    @post = Post.create( post_params )
    #redirect to posts_path
    redirect_to posts_path
  end
  
  #define post_params
  private

  def post_params  
    params.require(:post).permit(:image, :caption)
  end 
end
