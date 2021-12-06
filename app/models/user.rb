class User < ApplicationRecord
    has_many :friendships
    has_many :posts
    has_many :pokes
    has_many :messages, through: :friendships

    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, uniqueness: true

end
