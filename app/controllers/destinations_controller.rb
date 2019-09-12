class DestinationsController < ApplicationController
    def index 
        destinations = Destination.all
        render json: destinations, except: [:created_at, :updated_at]
    end

    def show 
        destination = Destination.find_by(id: params[:id])
        # render json: destination, include: [:one_days, :two_days], except: [:created_at, :updated_at]
        render json: destination.to_json(:include => {
            :one_days => {:include => [:images, :genre, :user]},
            :two_days => {:include => [:images, :genre, :user]}
          }, :except => [:updated_at])
    end
end
