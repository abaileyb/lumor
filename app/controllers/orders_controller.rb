class OrdersController < ApplicationController
	def index
		@item = Item.find(params[:item_id])
		@orders = @item.orders.all
	end

	def show
		
	end  

	



end
