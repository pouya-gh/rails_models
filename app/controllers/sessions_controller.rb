class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.password == params[:password]
      cookies[:user_id] = user.id
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
    cookies.delete(:user_id)
    redirect_to posts_path
  end
end
