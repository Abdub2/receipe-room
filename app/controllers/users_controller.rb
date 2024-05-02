class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user
            app_response(message: "Registered successfully", status: :created, data: user)
        else
            app_response(message: "Failed to register", status: :unprocessable_entity, data: user.errors.full_messages)
        end
    end

    private
    def user_params
        params.permit(:email, :password, :password_confirmation)
    end
end
