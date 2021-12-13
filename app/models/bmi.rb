class Bmi < ApplicationRecord
    belongs_to :user

    validates :bmi, :health, :health_bmi_range, presence: true
end
