class OneDay < ApplicationRecord
    belongs_to :user
    belongs_to :destination
    belongs_to :genre
    
    has_many :likes
    has_many :comments
    has_many :images
end
