class Api::V1::CollectionsController < ApplicationController

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

    def collections_params 
        params.require(:collections).permit(:type, :value, :description)
    end 
end
