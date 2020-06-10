class PostsController < ApplicationController
	before_action :find_post, only: [ :update]
	
	def index
		@posts=Post.all
		render json:@posts
	end

	def create
		@post= Post.new(post_params)
		@post.save

		render json:@post
	end
	
	def update
		@post.update(params.require(:post).permit!)
		if @post.valid?
			render json:@post
		else
			flash[:errors]=@post.erors.full_messages
		end
	end

	def delete 
		Post.find(params[:id]).delete
	end

	private

	def post_params
		params.require(:post).permit!
	end

	def find_post
 		@post = Post.find(params[:id])
	end



end
