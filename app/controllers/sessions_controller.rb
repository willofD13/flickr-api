class SessionsController < ApplicationController
    def create
      auth_hash = request.env['omniauth.auth']
      uid = auth_hash.uid
      name = auth_hash.info.name
      @user = User.find_or_create_by(uid: uid,name: name)
    end

end