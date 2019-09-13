class TwoDay < ApplicationRecord
    belongs_to :user
    belongs_to :destination
    belongs_to :genre
    
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :images, dependent: :destroy

    def date
        self.created_at.to_date
    end
    
end
