class Artist < ApplicationRecord
  has_many :artists_events
  has_many :events, through: :artists_events
end
