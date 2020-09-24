class ItemsController < ApplicationController

    def index 
    end 

    def show 
    end 

    def new 
    end 
    
    def create 
    end 

    def edit 
    end 

    def update 
    end 

    def destroy 
    end 

    private 

    def items_params 
        params.require(:items).permit(:name, :value, :description, :collection_id)
    end 

end
