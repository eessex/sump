class Event < ApplicationRecord
  belongs_to :presenter
  has_many :artists_events
  has_many :artists, through: :artists_events

  before_save :set_upcoming

  def set_upcoming
    unless self.date.nil?
      self.date > DateTime.now ? self.upcoming = true : self.upcoming = false
    end
  end

  def self.sanitize_descriptions
    self.all.each do |event|
      event.description.gsub("<br />", "")
    end
  end
end
