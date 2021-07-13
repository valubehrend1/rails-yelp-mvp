class Restaurant < ApplicationRecord
    has_many :reviews
    restaurant_categories = ["chinese", "italian", "japanese", "french", "belgian"]

    validates :name, :address, :category, presence: true
    validates_inclusion_of :category, in: restaurant_categories
end
