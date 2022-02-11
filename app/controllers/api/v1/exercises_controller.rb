class Api::V1::ExercisesController < ApplicationController
    skip_before_action :authorized
    before_action :set_user

    def index
        exercises = @user.exercises
        render json: exercises
    end

    def create
        # binding.pry
        exercise = @user.exercises.create(exercise_params)
        if exercise.save
            render json: exercise
        else
            render json: {errors: exercise.errors.full_messages}
        end
    end

    def show
        exercise = @user.exercises.find(params[:id])
        render json: exercise
    end

    def destroy
        exercise = @user.exercises.find(params[id])
        exercise.destroy
        render json: exercise
    end

    private
    def set_user
        @user = User.find(params[:user_id])
    end

    def exercise_params
        params.require(:exercise).permit(:bodyPart, :equipment, :gifUrl, :name, :target, :user_id)
    end

end

