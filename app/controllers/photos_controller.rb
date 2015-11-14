class PhotosController < ApplicationController

	def create
		@place = Place.find(params[:place_id])
		@place.photo.create(photo_params)
		redirect_to place_path(@place)
	end

	def photo_params
		params.require(:photo).permit(:caption, {pictures: []})
	end
end


