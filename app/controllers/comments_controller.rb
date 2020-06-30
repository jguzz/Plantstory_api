class CommentsController < ApplicationController

	def index
		@comments=Comment.all
		render json:@comments
	end
	def create
		@comment= Comment.new(comment_params)
		@comment.save
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
