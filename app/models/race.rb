class Race < ApplicationRecord
    has_many :characters
    has_many :users, through: :characters
    has_many :race_abilities
end
