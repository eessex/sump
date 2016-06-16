class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :price, :description, :image
  belongs_to :presenter
  has_many :artists
end
