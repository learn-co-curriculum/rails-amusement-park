module UsersHelper
  def login(user)
    session[:user_id] = user.id
  end

  def admin?(user)
    if user.admin
      session[:user_id] = user.id
    end
  end
end
