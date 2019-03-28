class Venue < ApplicationRecord

  def last_attendace(id)
    events = Event.where(:venue => id).order("start_date desc").limit(1)
    events[0].name
  end

end
