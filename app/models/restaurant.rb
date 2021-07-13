class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    restaurant_categories = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

    validates :name, :address, :category, presence: true
    validates_inclusion_of :category, in: restaurant_categories
end
