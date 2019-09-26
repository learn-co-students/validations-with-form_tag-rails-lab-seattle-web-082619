class PostsController < ApplicationController
  def show
    @post = post_id_params
  end

  def new 
    @post = Post.new
  end 

  def edit
    @post = post_id_params
  end

  def update
    @post = post_id_params
    
    if @post.update(post_params)
    redirect_to post_path(@post)
    else 
      render :edit
    end 
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
  
  def post_id_params
    @post = Post.find(params[:id])
  end 
end
