class OneDaysController < ApplicationController
    def index
        one_days = OneDay.all 
        render json: one_days, include: [:user, :destination, :genre], except: [:updated_at]
    end


end
