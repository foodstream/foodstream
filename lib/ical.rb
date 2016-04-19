module Ical
  def create_ics_file(event_hash)
    @calendar = Icalendar::Calendar.new
    event = Icalendar::Event.new
    event.dtstart = event_hash[:dstart]
    event.dtend = event_hash[:dtend]
    event.summary = event_hash[:summary]
    event.description = event_hash[:description]
    event.location = event_hash[:location]
    @calendar.add_event(event)
    @calendar.publish
    file_name = event_hash[:file_name]
    file = File.new(file_name, "w+")
    if file
      file.write(@calendar.to_ical)
      file.close
      true
    else
      false
    end
  end

end
