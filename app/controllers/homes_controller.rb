class HomesController < ApplicationController
    before_action :require_authentication, except: :index
    def index
    end
end
