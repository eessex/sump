class Event < ApplicationRecord
  belongs_to :presenter
  has_many :artists_events
  has_many :artists, through: :artists_events
  has_many :images
end
