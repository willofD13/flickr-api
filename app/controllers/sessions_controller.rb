class SessionsController < ApplicationController
  before_action :require_authentication, except: :create
    def create
      auth_hash = request.env['omniauth.auth']
      uid = auth_hash.uid
      name = auth_hash.info.name
      @user = User.find_or_create_by(uid: uid,name: name)
      if @user.persisted?
        session[:user_id] = @user.uid
        redirect_to static_pages_path
      else
        redirect_to root_path
      end
    end

    def delete
      session[:user_id] = nil
      redirect_to root_path, notice: 'You have logged out'
    end

end