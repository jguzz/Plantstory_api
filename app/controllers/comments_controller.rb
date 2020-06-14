class CommentsController < ApplicationController

	def index
		@comments=Comment.all
		render json:@comments
	end
	def create
		@comment= Comment.create(comment_params)

		render json:@comment
	end
	def delete 
		Comment.find(params[:id]).delete
	end

	private
	def comment_params
		params.require(:comment).permit!
	end
end
