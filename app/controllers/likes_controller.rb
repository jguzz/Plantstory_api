class LikesController < ApplicationController
	def create
        @like= Like.new(like_params)
        @like.save
        render json:@like
	end
	def index
        @likes = Like.all
        render json:@likes
	end
	def destroy 
		Like.find(params[:id]).delete
		@likes = Like.all
		render json:@likes
	end
	
	private
    def like_params
        params.require(:like).permit(:user_id, :post_id, :id)
    end

end
