class TwoDaysController < ApplicationController
    def index
        two_days = TwoDay.all
        render json: two_days, include: [:user, :destination, :genre], except: [:updated_at]
    end
end
