class ExerciseSerializer
  include JSONAPI::Serializer
  attributes :body_part, :equipment, :gif_url, :name, :target
  belongs_to :user
end
