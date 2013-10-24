class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def current_user
    if session[:user_id]
      user = User.find session[:user_id]

      return user
    else
      return nil
    end
  end

end
