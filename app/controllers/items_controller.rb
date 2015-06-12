class ItemsController < ApplicationController
	def index
		@items = Item.order(:updated_at).reverse_order
	end

	def show
		@item = Item.find(params[:id])
		@photos = Photo.where(item_id: @item.id)
	end

	def new
		@item = Item.new
		@user = current_user
	end

	def create
		if params[:idea_id]
			@idea = Idea.find(params[:idea_id])	
			@item = Item.new
			@item.name = @idea.name
			@item.description = @idea.description
			@item.price = @idea.price
			@item.photos = @idea.photos
			
			@photos = Photo.where(idea_id: @idea.id)
			@photos.each do |photo|
				photo.item_id = @item_id
				photo.save!
			@item.user_id = @idea.user_id
			end
			@idea.destroy
		else
			@item = Item.new(item_params)
  			@item.user_id = current_user.id
		end

		@item.save!
		redirect_to items_path
	end


	def edit
		@item = Item.find params[:id]
	end

	def update
		@item = Item.find params[:id]
		if @item.update(item_params)
			redirect_to item_path(@item)
		else
			render 'edit'
		end
	end


	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to items_path
	end


	private
		def item_params
			params.require(:item).permit(:name, :description, :price)
		end

end

