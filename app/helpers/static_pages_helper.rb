module StaticPagesHelper
    def current_user
        User.find_by(uid: session[:user_id]) if session[:user_id]
    end
end
