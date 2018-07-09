class PhotosController < ApplicationController

  def create
    @user = user.find(params[:user_id])

    if params[:images]
        params[:images].each do |img|
        @pin.photos.create(image: img)
      end

      @photos = @pin.photos
      redirect_back(fallback_location: request.referer, notice: "Saved...")
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @pin = @photo.pin

    @photo.destroy
    @photos = Photo.where(pin_id: @pin.id)

    respond_to :js
  end
end