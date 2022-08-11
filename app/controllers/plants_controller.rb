class PlantsController < ApplicationController

    def index
        render json: Plant.all
    end

    def show
        render json: Plant.find(params[:id])
    end

    def create
        Plant.create(permit_parmas)
    end

    private

    def permit_parmas
        params.permit(:name, :image, :price)
    end
end
