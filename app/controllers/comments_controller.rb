class CommentsController < ApplicationController
    def index
        comments = Comment.all 
        render json: comments, except: [:created_at, :updated_at]
    end

    def create
        comment = Comment.find_or_create_by(comment: params[:comment], user_id: params[:user_id], one_day_id: params[:one_day_id], two_day_id: params[:two_day_id], three_day_id: params[:three_day_id])
        render json: comment, except: [:created_at, :updated_at]
    end
end
