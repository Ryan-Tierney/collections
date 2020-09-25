class Api::V1::ItemsController < ApplicationController
    
    def index 
        @items = Item.all 
        render json: @items  
    end 

    def show 
        @item = Item.find(params[:id]) 
        render json: @item, status: 200 
    end 

    def create 
        @item = Item.create(item_params)
        render json: @item, status: 200 
    end 

    def update 
        @item.update(item_params)
        if @item.save
            render json: @item, status: 200 
        else 
            render json: { errors: @items.errors.full_messages }, status: :unprocessible_entity
        end 
    end 

    def destroy 
        item = Item.find_by(id: params[:id])
        item.destroy
        render json: item
    end 

    private 

    def items_params 
        params.require(:items).permit(:name, :value, :description, :collection_id)
    end 

end
