module SessionsHelper
  def sign_in_user(user)
    cookies[:user_id] = user.id
    current_user = user
  end

  def sign_out
    cookies.delete(:user_id)
    current_user = nil
  end

  def current_user
    @current_user = @current_user || User.find_by_id(cookies[:user_id])
  end

  def current_user=(user)
    @current_user = user
  end

  def signed_in?
    current_user
  end
end
