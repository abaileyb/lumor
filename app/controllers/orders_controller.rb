class OrdersController < ApplicationController
	def index
		@item = Item.find(params[:item_id])
		@orders = @item.orders.all
		@orders_grid = initialize_grid(@orders,
			name: "ordersheet",
			enable_export_to_csv: true,
			csv_file_name: "OrderSheetExportCSV"
			)

		export_grid_if_requested('ordersheet' => 'orders_grid') do
      # usual render or redirect code executed if the request is not a CSV export request
    end
	end

	def show

	end  
end
