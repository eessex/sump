class Event < ApplicationRecord
  belongs_to :presenter
  has_many :artists
end
