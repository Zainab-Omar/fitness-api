class User < ApplicationRecord
    has_many :exercises
    has_many :bmis
    has_secure_password

    validates :user_name, presence: true
    validates :email, presence: true, format: { with: /[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]/, message: "invalid email" }
    validates :email, uniqueness: true
    validates :password, presence: true
end
