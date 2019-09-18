class User < ApplicationRecord
    has_many :characters

    validates :username, presence: true
    validates :username, uniqueness: true

end
