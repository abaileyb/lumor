class FixitsController < ApplicationController
	def new
		@fixit = Fixit.new
		@user = current_user
	end

	def create
		@fixit = Fixit.new
		@fixit.user_id = current_user.id

		if @fixit.save
			redirect_to fixits_thanks_path(@fixit)
		else
			render 'new'
		end
	end

	def thanks
	end

end
