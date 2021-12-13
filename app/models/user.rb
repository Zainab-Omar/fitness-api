class User < ApplicationRecord
    has_many :exercises
    has_many :bmis
    has_secure_password
end
