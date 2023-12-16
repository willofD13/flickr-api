module StaticPagesHelper
    def current_user
        User.find_by(uid: session[:user_id]) if session[:user_id]
    end

    def user_signed_in?
        return true if current_user
    end
end
