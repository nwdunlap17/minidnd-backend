class RacesController < ApplicationController

    def show
        race = Race.find(params[:id])
        render json: race
    end
    
    def index
        @races = Race.all
        render json: @races
    end
end
