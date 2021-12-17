class UserSerializer
  include JSONAPI::Serializer
  attributes :user_name, :email, :password_digest
  has_many :exercises
  has_many :bmis
end
