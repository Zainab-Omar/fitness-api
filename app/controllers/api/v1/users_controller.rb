class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

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

end
