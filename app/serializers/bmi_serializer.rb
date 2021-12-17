class BmiSerializer
  include JSONAPI::Serializer
  attributes :bmi, :health, :health_bmi_range
  belongs_to :user
end
