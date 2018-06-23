class PhotosController < ApplicationController

  def create
    @user = user.find(params[:user_id])

    if params[:images]
        params[:images].each do |img|
        @user.photos.create(image: img)
      end

      @photos = @user.photos
      redirect_back(fallback_location: request.referer, notice: "Saved...")
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @user = @photo.user

    @photo.destroy
    @photos = Photo.where(user_id: @user.id)

    respond_to :js
  end
end