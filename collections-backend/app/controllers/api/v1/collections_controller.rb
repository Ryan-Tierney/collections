class Api::V1::CollectionsController < ApplicationController

    def index 
        @collections = Collection.all 
        render json: @collections
    end 

    def show 
        @collection = Collection.find(params[:id])
        render json: @collection, status: 200 
    end 

    def create 
        @collection = Collection.create(collection_params)
        render json: @collction, status: 200 
    end 

    def update 
        @collection.update(collection_params)
        if @collection.save 
            render json: @collection, status: 200 
        else 
            render json: { errors: @collections.error.full_messages }, status: :unprocessible_entity
        end 
    end 

    def destroy 
        collection = Collection.find_by(id: params[:id])
        collection.destroy
        render json: collection
    end 

    private 

    def collections_params 
        params.require(:collections).permit(:type, :value, :description)
    end 
end
