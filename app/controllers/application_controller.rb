class ApplicationController < ActionController::Base
    before_action :require_authentication

    helper_method :current_user
    helper_method :user_signed_in?

    def current_user
        User.find_by(uid: session[:user_id]) if session[:user_id]
    end

    def user_signed_in?
        return true if current_user
    end

    def require_authentication
        redirect_to homes_path unless user_signed_in? 
    end
end
