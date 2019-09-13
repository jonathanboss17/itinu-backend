class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :one_day, required: false
    belongs_to :two_day, required: false
    belongs_to :three_day, required: false
end
