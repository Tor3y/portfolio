class PhotosController < ApplicationController
end

def show
    @property = property
    redirect_to photo_path
  end

   def property
    Photos.new  title: 'A beautiful property', 
                      description: decription,
                      photos: photos
  end


def index
    @users = photo.all
    @user = photo.where(is_active: true)
  end
