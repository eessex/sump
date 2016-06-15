class PresenterSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url, :image
  has_many :events
end
