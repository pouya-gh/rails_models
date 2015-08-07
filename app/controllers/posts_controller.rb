class PostsController < ApplicationController
  layout 'layouts/my_layout', only: [:show]
  before_filter :check_signed_in, only: [:new, :create, :edit, :update, :destroy]
  before_filter :find_post_by_id, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new()
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.save
    redirect_to posts_path
  end

  def edit
  end

  def update
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def find_post_by_id
    @post = current_user.posts.find(params[:id])
  end

  def check_signed_in
    if !signed_in?
      redirect_to root_path
    end
  end
end
