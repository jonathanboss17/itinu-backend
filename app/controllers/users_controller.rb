class UsersController < ApplicationController
    def index 
        # make sure to edit so that data sent back to JS inlcudes relationships ...
        users = User.all 
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user.to_json(:include => {
            :one_days => {:include => [:images, :genre, :user, :comments, :likes]},
            :two_days => {:include => [:images, :genre, :user, :comments, :likes]}, 
            :likes => {:include => [:one_day => {
                :include => [:images, :genre, :user, :comments, :likes]
            }, :two_day => {
                :include => [:images, :genre, :user, :comments, :likes]
            }]}
          }, :except => [:updated_at])
    end

    def create
        user = User.find_or_create_by(username: params[:username])
        render json: user, except: [:created_at, :updated_at]
    end

    def destroy 
        user = User.find_by(id: params[:id])
        User.destroy(user.id)
    end

end
