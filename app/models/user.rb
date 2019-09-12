class User < ApplicationRecord
    has_many :one_days, dependent: :destroy
    has_many :two_days, dependent: :destroy

    has_many :destinations, through: :one_days
    has_many :genres, through: :one_days
    has_many :images, through: :one_days

    has_many :destinations, through: :two_days
    has_many :genres, through: :two_days
    has_many :images, through: :two_days

    has_many :likes
    has_many :comments 

    def name 
        self.first_name + " " + self.last_name
    end
end
