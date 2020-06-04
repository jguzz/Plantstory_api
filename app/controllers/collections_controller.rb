class CollectionsController < ApplicationController
	before_action :find_collection,only: [:show, :edit, :update]
	
	def index
		@collections=Collection.all
		render json:@collections
	end

	def create
		@collection= Collection.new(collection_params)
		@collection.save

		render json:@collection
	end
	
	def update
		@collection.update(params.require(:collection).permit!)
		if @collection.valid?
			render json:@collection
		else
			flash[:errors]=@collection.erors.full_messages
		end
	end

	def delete 
		Collection.find(params[:id]).delete
	end

	private

	def collection_params
		params.require(:collection).permit!
	end

	def find_collection
		@collection = Collection.find(params[:id])
	end
end
