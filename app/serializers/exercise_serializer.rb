class ExerciseSerializer
  include JSONAPI::Serializer
  attributes :bodyPart, :equipment, :gifUrl, :name, :target
  belongs_to :user
end
