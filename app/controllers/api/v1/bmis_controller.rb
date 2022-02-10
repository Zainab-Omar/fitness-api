class Api::V1::BmisController < ApplicationController
    skip_before_action :authorized
    before_action :set_user


    def create
        binding.pry
        bmi = @user.bmis.new(bmi_params)
        if bmi.save
            render json: bmi
        else
            render json: {errors: bmi.errors.full_messages}
        end
    end


    private
    def bmi_params
        params.require(:bmi).permit(:bmi, :health, :healthy_bmi_range, :user_id)
    end

    def set_user
        @user = User.find(params[:user_id])
    end
    
end
