class StoriesController < ApplicationController
	before_action :find_story,only: [  :update]
	
	def index
		@stories=Story.all
		render json:@stories
	end

	def create
		@story= Story.new(story_params)
		@story.save

		render json:@story
	end
	
	def update
		@story.update(params.require(:story).permit!)
		if @story.valid?
			render json:@story
		else
			flash[:errors]=@story.erors.full_messages
		end
	end

	def delete 
		Story.find(params[:id]).delete
	end

	private

	def story_params
		params.require(:story).permit!
	end

	def find_story
		@story = Story.find(params[:id])
	end



end
