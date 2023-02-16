class UsersController < ApplicationController
    skip_before_action :authorized_user, only: [:create]
    
    # def show 
    #     user = User.find(params[:id])
    #     render json: user, status: :ok
    # end 

    def show
        render json: @user, status: :ok
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end 

    def find_user
        find_user = User.find_by(id: session[:user_id]) 

        # @user ||= User.find_by(id: session[:user_id]) if session[:user_id]

    end
    
    private 

    def user_params
        params.permit(:username, :email, :password, :role)
    end 
end
