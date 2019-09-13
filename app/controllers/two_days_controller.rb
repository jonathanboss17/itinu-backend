class TwoDaysController < ApplicationController
    def index
        two_days = TwoDay.all
        render json: two_days, include: [:user, :destination, :genre], except: [:updated_at]
    end

    def show 
        two_day = TwoDay.find_by(id: params[:id])
        render json: two_day, include: [:user, :destination, :genre, :likes, :comments, :images], except: [:updated_at]
    end
end
