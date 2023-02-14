class ProductsController < ApplicationController
    before_action :find_product, only: [:show, :update, :destroy]

    def index
        products = Product.all
        render json: products, status: :ok
    end

    def show
        render json: @product, status: :ok
    end

    def create
        new_product = Product.create!(new_product_params)
        render json: new_product, status: :created
    end

    def update
        @product.update!(edit_product_params)
        render json: @product, status: :accepted
    end

    def destroy
        @product.destroy
        head :no_content
    end

    private

    def find_product
        @product = Product.find(params[:id])
    end

    def edit_product_params
        params.permit(:stock, :price, :description)
    end

    def new_product_params
        params.permit(:name, :category, :picture_link, :description, :price, :stock)
    end

end
