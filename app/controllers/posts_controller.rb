class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit]
  before_action :move_to_index, except: [:index, :show, :search]
  
  def index
    @posts = Post.all.order("created_at DESC")

    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create!(post_params)
    
    redirect_to root_path
  end

  def show
    
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy(post_params)
  end

  # def search
  # end

  private
  def post_params
    params.require(:post).permit(:title, :text).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
