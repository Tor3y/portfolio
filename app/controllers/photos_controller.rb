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
    # @user = User.where(:id => params[:user_id]).first
    @photo = current_user.photos.new(photo_params)
    # @photo = Photo.create(photo_params)
    # @photo.user = current_user
    # @photo.date ||= DateTime.now
    # @tags = tagger(tags)
    #@photo.tags = tagger(@photo.tags)
    # Attach this criterion to a decision
    if @photo.save
      redirect_to users_path
      # user_path(current_user)
    else
      render 'new'
    end
  end

  def show
      # @photos = Photo.where(:user_id => current_user.id)
      # redirect_to photo_path(current_user)
  end


  private
  def photo_params
    params.require(:photo).permit(:image)
  end
end
