class Exercise < ApplicationRecord
    belongs_to :user

    validates :body_part, :equipment, :gif_url, :name, :target, presence: true
end
