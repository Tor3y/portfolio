class PhotosController < ApplicationController

  def index
      @photos = Photo.all
      #@photo = Photo.where(is_active: true)
  end

  def new
    @photo = Photo.new
  end

  def create
    # Find our parent decision that we should attach to
    #@photo = current_user.photos.new(photo_params)
    @photo = Photo.create(photo_params)
    @photo.user = current_user
    @photo.date ||= DateTime.now
    # @tags = tagger(tags)
    #@photo.tags = tagger(@photo.tags)
    # Attach this criterion to a decision
    if @photo.save
      redirect_to photo_path(:user_id)
    else
      render 'new'
    end
  end

  def show
      @property = property
      redirect_to photo_path
  end


  private
  def photo_params
    params.require(:photo).permit(:image, :user_id)
  end
end
