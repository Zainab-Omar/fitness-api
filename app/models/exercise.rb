class Exercise < ApplicationRecord
    belongs_to :user

    validates :bodyPart, :equipment, :gifUrl, :name, :target, presence: true
end
