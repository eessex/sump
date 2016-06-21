class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :price, :description, :image, :upcoming, :status
  belongs_to :presenter
  has_many :artists
end
