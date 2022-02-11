class UserSerializer
  include JSONAPI::Serializer
  attributes :user_name, :email, :password_digest, :exercises, :bmis
  has_many :exercises
  has_many :bmis
end
