class PostsController < ApplicationController
  layout 'layouts/my_layout', only: [:show]
  before_filter :find_post_by_id, only: [:show, :edit, :update, :destroy]
  before_filter :check_signed_in, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    # @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.user_id = params[:post][:user_id]
    @post.save
    redirect_to posts_path
  end

  def edit
    # @post = Post.find(params[:id])
    #render :new
  end

  def update
    # @post = Post.find(params[:id])
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.user_id = params[:post][:user_id]
    @post.save
    redirect_to posts_path
  end

  def destroy
    # post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def find_post_by_id
    @post = Post.find(params[:id])
  end

  def check_signed_in
    if !cookies[:user_id]
      unless User.find_by_id(cookies[:user_id])
        redirect_to root_path
      end
    end
  end
end
