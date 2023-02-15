class SessionsController < ApplicationController
    skip_before_action :authorized_user, only: [:login]

    def login
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id 
            # cookies[:total_logins] ||= 0
            # cookies[:total_logins] += 1
            render json: user, status: 200
            
        else
            render json: {error: "Invalid Credentials"}, status: 401
            byebug
        end
    end

    def logout
        session.delete :user_id
        head :no_content
    end
end
