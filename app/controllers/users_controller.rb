class UsersController < ApplicationController
	# before_action :find_user,only: [ :update]


	def index
		@users=User.all
		render json:@users
	end

	def show 
		@user = User.find_by(username: params[:username])
		if @user && @user.password == params[:password] 
		avatar = rails_blob_path(@user.avatar)
		render json: { user: @user, avatar: avatar}
		else
			render json: {message: 'This user is not authenticated!'}
		end
	end

	def create
		@user= User.new(user_params)
		@user.save

		render json:@user
	end
	
	def update
		@user = User.find(params[:id])
		@user.update(params.require(:user).permit!)
		if @user.valid?
			render json:@user
		else
			flash[:errors]=@user.erors.full_messages
		end
	end

	private

	def user_params
		params.require(:user).permit!
	end

	# def find_user
	# 	@user = User.find(params[:id])
	# end

end
