class LikesController < ApplicationController
    def index
        likes = Like.all
        render json: likes, except: [:created_at, :updated_at]
    end

    def create
        like = Like.find_or_create_by(user_id: params[:user_id], one_day_id: params[:one_day_id], two_day_id: params[:two_day_id], three_day_id: params[:three_day_id])
    end
end
