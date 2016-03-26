# Serializer for the Json Api test
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
end
