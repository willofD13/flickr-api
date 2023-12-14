class StaticPagesController < ApplicationController
    require 'flickr'

    def index
        flickr = Flickr.new
        if params[:id].nil?
            @photos = Flickr.photos.getRecent
    end
end