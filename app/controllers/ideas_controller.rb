class IdeasController < ApplicationController
	def index
		@user = current_user
		@ideas = Idea.all   #eventually will be able to filter by year
	end


	def show
		@idea = Idea.find(params[:id])
		@photos = Photo.where(idea_id: @idea.id)
	end

	def new
		@idea = Idea.new
		@user = current_user
	end

	def create
		@user = current_user
		@idea = @user.ideas.create(idea_params)
		if @idea.save
			redirect_to ideas_path
		else
			render 'new'
		end
	end

	def create
  		@idea = Idea.new(idea_params)

  		respond_to do |format|
    		if @idea.save
     
      			if params[:images]
        #===== The magic is here ;)
        			params[:images].each { |image|
          			@idea.photos.create(image: image)
        		}
      			end

      			format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
      			format.json { render json: @idea, status: :created, location: @idea }
    		else
      		format.html { render action: "new" }
      		format.json { render json: @idea.errors, status: :unprocessable_entity }
    		end
  		end
	end


	def edit
		@idea = Idea.find params[:id]
	end

	def update
		@idea = Idea.find params[:id]
		authorize @idea
		if @idea.update(idea_params)
			redirect_to idea_path(@idea)
		else
			render 'edit'
		end
	end

	def destroy
		@idea = Idea.find(params[:id])
		authorize @idea
		@idea.destroy
		redirect_to ideas_path
	end

	private
		def idea_params
			params.require(:idea).permit(:name, :description)
		end






end
