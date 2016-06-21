class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :price, :description, :image, :upcoming
  belongs_to :presenter
  has_many :artists
end
