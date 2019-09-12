class Genre < ApplicationRecord
    has_many :one_days
    has_many :two_days
end
