class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :price, :description, :url, :image, :upcoming
  belongs_to :presenter
  has_many :artists
end
