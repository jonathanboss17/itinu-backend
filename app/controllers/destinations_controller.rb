class DestinationsController < ApplicationController
    def index 
        destinations = Destination.all
        render json: destinations, except: [:created_at, :updated_at]
    end

    def show 
        destination = Destination.find_by(id: params[:id])
        render json: destination.to_json(:include => {
            :one_days => {:include => [:images, :genre, :user, :comments, :likes]},
            :two_days => {:include => [:images, :genre, :user, :comments, :likes]}
          }, :except => [:updated_at])
    end
end
