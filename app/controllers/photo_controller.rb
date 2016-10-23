class PhotoController < ApplicationController
  def index
  	@photos=Photo.all
  end

  def new
  	@photo=Photo.new
  end

  def upload
  	@photo=Photo.new(image_param)

  	if @photo.save
  		flash[:success]="Successfully Image Uploaded"
  		redirect_to root_path
  	else
  		render 'new'
  end
end
