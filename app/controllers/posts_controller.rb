class PostsController < ApplicationController

	
	def index
		@posts=Post.all
		@posts_w_imgs = @posts.map { |post| {post_img: rails_blob_path(post.post_img),post: post }} 
		render json:@posts_w_imgs
	end

	def show 
		@post = Post.find_by(id: params[:id])
		@post_img = rails_blob_path(@post.post_img)
		render json: {post: @post, post_img: @post_img}
	end

	def create
		@post= Post.create(caption: params[:caption], story_id: params[:story_id] )

		render json:@post
	end
	
	def update

		@post = Post.find(params[:id])
		@post.update(post_img: params[:post_img])
		# byebug
		post_img_url = rails_blob_path(@post.post_img)
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
