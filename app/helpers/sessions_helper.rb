module SessionsHelper
  def signed_in?
    if cookies[:user_id]
      User.find_by_id(cookies[:user_id])
    else
      false
    end
  end
end
