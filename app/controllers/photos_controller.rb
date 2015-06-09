class PhotosController < ApplicationController
  def new 
    @idea = Idea.find params[:idea_id]
    @photo = @idea.photos.build
  end

  def create
    @idea = Idea.find params[:idea_id]
    @photo = @idea.photos.build(photo_params)
    if @photo.save
        redirect_to idea_path(@idea)
    else
        render 'new'
     end
  end

  def destroy
      @photo = Photo.find(params[:id])
      @photo.destroy
      redirect_to idea_path(@photo.idea)
  end

  private
  	def photo_params
      params.require(:photo).permit(:image)
  	end
end
