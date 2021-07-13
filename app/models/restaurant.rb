class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    restaurant_categories = ["chinese", "italian", "japanese", "french", "belgian"]

    validates :name, :address, :category, presence: true
    validates :rating, length: { in: 1..5 }
    validates_inclusion_of :category, in: restaurant_categories
end
