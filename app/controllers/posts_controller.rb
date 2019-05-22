class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def new

  end
  def edit

  end
  def create

    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to @post

  end
  def update

  end
  def destroy

  end
  private
  def set_post
    @post = Post.find(params[:id])
  end
  def post_params
    params.require(:post).permit(:title, :body)

  end
end
