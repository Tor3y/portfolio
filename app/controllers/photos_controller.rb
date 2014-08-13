class PhotosController < ApplicationController

def index
    @photos = Photo.all
    #@photo = Photo.where(is_active: true)
  end

def create
  # Find our parent decision that we should attach to
    @photo = current_user.photos.new(photo_params)
    @photo.date ||= DateTime.now
    # Attach this criterion to a decision
    if @photo.save
      redirect_to users_path
    else
      render 'new'
    end
end
end

def new
  @photo =photo.new


def show
    @property = property
    redirect_to photo_path
  end

   def property
    Photos.new  title: 'A beautiful property', 
                      description: decription,
                      photos: photos
  end




private
def photo_params
  params.require(:photo).permit(:image)
  end
end
