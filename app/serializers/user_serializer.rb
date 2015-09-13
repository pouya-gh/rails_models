class UserSerializer < ActiveModel::Serializer
  attributes :name, :url

  def url
    "/users/#{object.id}"
  end
end
