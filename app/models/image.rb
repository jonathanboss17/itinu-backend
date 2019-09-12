class Image < ApplicationRecord
    belongs_to :one_day, required: false 
    belongs_to :two_day, required: false
end
