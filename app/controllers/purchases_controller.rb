class PurchasesController < ApplicationController

    def show
        purchases = Purchase.all.where(user_id: session[:user_id])
        render json: purchases, status: :ok
        # byebug
    end

    def new_purchase
        # if (:user_id = user_id: session[:user_id])
        new_purchase = Purchase.create!(new_purchase_params)
        render json: new_purchase, status: :created
        # end
    end

    

    private
    
    def new_purchase_params
        params.permit(:product_id, :user_id)
    end
end
