class Bmi < ApplicationRecord
    belongs_to :user

    validates :bmi, :health, :healthy_bmi_range, presence: true
end
