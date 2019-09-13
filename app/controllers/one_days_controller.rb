class OneDaysController < ApplicationController
    def index
        one_days = OneDay.all 
        render json: one_days, include: [:user, :destination, :genre], except: [:updated_at]
    end

    def show
        one_day = OneDay.find_by(id: params[:id])
        render json: one_day, include: [:user, :destination, :genre, :likes, :comments, :images], except: [:updated_at]
    end

    def destroy
        one_day = OneDay.find_by(id: params[:id])
        OneDay.destroy(one_day.id)
    end


end
