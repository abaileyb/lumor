class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def show
	@item = Item.find(params[:id])
	end

	def destroy
		@item = Item.find(params[:id])
		authorize @item
		@item.destroy
		redirect_to items_path
	end


	def edit
		@item = Item.find params[:id]
	end

	def update
		@item = Item.find params[:id]
		authorize @item
		if @item.update(item_params)
			redirect_to item_path(@item)
		else
			render 'edit'
		end
	end



	private
		def item_params
			params.require(:item).permit(:name, :description, :price)
		end

end

