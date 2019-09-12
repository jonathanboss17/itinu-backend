class UsersController < ApplicationController
    def index 
        # make sure to edit so that data sent back to JS inlcudes relationships ...
        users = User.all 
        render json: users, except: [:created_at, :updated_at]
    end
end
