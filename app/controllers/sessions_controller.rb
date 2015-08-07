class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.password == params[:password]
      sign_in_user(user)
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to posts_path
  end
end
