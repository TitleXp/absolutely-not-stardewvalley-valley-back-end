class FarmsController < ApplicationController
    before_action :find_farm, only: [:show, :update]

    def index
        farms = Farm.all
        render json: farms, status: :ok
    end

    def show
        render json: @farm, serializer: FarmWithProductSerializer, status: :ok
    end

    def update
        @farm.update!(farm_params)
        render json: @farm, status: :accepted
    end

    private

    def find_farm
        @farm = Farm.find(params[:id])
    end

    def farm_params
        params.permit(:location)
    end

end
