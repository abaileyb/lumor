class ChargesController < ApplicationController
	def new
		@item = Item.find(params[:item_id])
		
	end

	def create
	  # Amount in cents
	  @user = current_user
	  @item = Item.find(params[:item_id])
	  @amount = @item.price * 100

	#i think this should take data from the stripe form 
	  @siz = params[:size]
	  @extra = params[:description]
	  
	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => @item.description,
	    :currency    => 'usd'
	  )

	  if @extra == "comments?"
	  	@extra = '[no order comments]'
	  end

	  Order.create(name: "#{@user.first_name} #{@user.last_name}", 
	  	size: @siz, comment: @extra, product: @item.name, price: @item.price, item_id: @item.id)

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end
end
