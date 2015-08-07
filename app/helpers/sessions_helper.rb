module SessionsHelper
  def current_user
    @current_user = @current_user || User.find_by_id(cookies[:user_id])
  end
  def signed_in?
    if cookies[:user_id]
      User.find_by_id(cookies[:user_id])
    else
      false
    end
  end
end
