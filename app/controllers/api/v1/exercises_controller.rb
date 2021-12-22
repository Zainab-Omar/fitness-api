class Api::V1::ExercisesController < ApplicationController
    skip_before_action :authorized

    def index
        exercises = Exercise.all
        render json: @exercises
    end

    def create
        exercise = Exercise.create(exercise_params)
        if exercise.save
            render json: exercise
        else
            render json: {errors: exercise.errors.full_messages}
        end
    end

    def show
        exercise = Exercise.find(params[:id])
        render json: exercise
    end

    def destroy
        exercise = Exercise.find(params[id])
        exercise.destroy
        render json: exercise
    end

    private
    def exercise_params
        params.require(:exercise).permit(:body_part, :equipment, :gif_url, :name, :target, :user_id)
    end
    
end

