class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    # get user info
    def profile
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    # signing up a user
    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id:@user.id)
            render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
        else
            render json: { message: @user.errors.full_messages }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
    end

end
