atom_feed do |feed|
  feed.title(@feed_title)
  feed.updated(@events.last.created_at)
  @events.each do |event|
    feed.entry(event) do |entry|
      entry.title(event.name)
      entry.content(event.description, type: "html")
      entry.updated(event.updated_at)
      entry.author do |author|
        author.name "Event Organizer"
      end
    end
  end
end