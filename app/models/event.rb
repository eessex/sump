class Event < ApplicationRecord
  belongs_to :presenter
  has_many :artists_events
  has_many :artists, through: :artists_events

  before_save :set_upcoming, :sanitize_description

  def set_upcoming
    if self.date
      self.date > DateTime.now ? self.upcoming = true : self.upcoming = false
    end
  end

  def sanitize_description
    if self.description
      self.description = self.description.gsub("<br />", "")
      self.description = self.description.gsub("&amp", "&")
    end
  end
end
