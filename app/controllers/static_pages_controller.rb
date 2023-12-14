class StaticPagesController < ApplicationController
    require 'flickr'

    def index
        flickr = Flickr.new
        if params[:id].nil?
            @photos = flickr.photos.getRecent
        else
            @photos = flickr.photos.search( user_id: params[:id])
        end
    end
end