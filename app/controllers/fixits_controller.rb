class FixitsController < ApplicationController
	def new
		@fixit = Fixit.new
		@user = current_user
	end

	def create
		@fixit = Fixit.new
		@fixit.user_id = current_user.id
		@user = current_user
		if @fixit.save
			UserMailer.fixit_email(@user).deliver_now
			redirect_to fixits_thanks_path(@fixit)
		else
			render 'new'
		end
	end

	def thanks
	end

end
