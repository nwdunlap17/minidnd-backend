class ClassType < ApplicationRecord
    has_many :characters
    has_many :users, through: :characters
    has_many :class_type_abilities
end
