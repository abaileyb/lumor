class PhotosController < ApplicationController

  def new 
    if params[:item_id]
      @parent = Item.find params[:item_id]
    else
      @parent = Idea.find params[:idea_id]
    end

    @photo = @parent.photos.build
                     
  end

  def create
    if params[:item_id]
      @item = Item.find params[:item_id]
      @photo = @item.photos.build(photo_params)
      if @photo.save
        redirect_to item_path(@item)
      else
        render 'new'
      end
    elsif params[:idea_id]
      @idea = Idea.find params[:idea_id]
      @photo = @idea.photos.build(photo_params)
      if @photo.save
        redirect_to idea_path(@idea)
      else
        render 'new'
      end
    else
      raise 'error'
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
