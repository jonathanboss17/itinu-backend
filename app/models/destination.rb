class Destination < ApplicationRecord
    # validate so that they enter in a valid destination
    has_many :one_days
    has_many :two_days
end
