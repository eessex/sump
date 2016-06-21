class Event < ApplicationRecord
  belongs_to :presenter
  has_many :artists_events
  has_many :artists, through: :artists_events

  before_save :set_upcoming, :sanitize_inputs

  def set_upcoming
    if self.date
      self.date > DateTime.now ? self.upcoming = true : self.upcoming = false
    end

    if self.date
      self.date.to_datetime > DateTime.now ? self.status = 'upcoming' : self.status = 'past'
    end
  end

  def sanitize_inputs
    if self.description
      self.description = self.description.gsub("<br />", "")
      self.description = self.description.gsub("&amp;", "&")
    end
    if self.name
      self.name = self.name.gsub("<br />", "")
      self.name = self.name.gsub("&amp;", "&")
    end
  end
end
