class UserSerializer < ActiveModel::Serializer
  attributes :id

  def as_json(*args)
    super
  end
end
