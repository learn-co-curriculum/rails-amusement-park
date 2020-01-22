module SessionsHelper 

  def current_user 
      @cuser ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
      !current_user.nil?
  end

  def redirect_if_not_logged_in?
      if !logged_in? 
          redirect_to root_url
      end
  end
end