class ChargesController < ApplicationController
	def new
		@item = Item.find(params[:item_id])
		
	end

	def create
	  # Amount in cents

	  @item = Item.find(params[:item_id])
	  @amount = @item.price * 100

#i think this should take data from the stripe form 
	  :size => params[:size]
	  :extra => params[:description]
	  
	  customer = Stripe::Customer.create(
	    :email => 'example@stripe.com',
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => @item.description,
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end

	


end
