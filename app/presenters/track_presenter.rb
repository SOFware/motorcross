class TrackPresenter
  def initialize(track, template)
    @track = track
    @template = template
  end
  
  def listing
    "#{@track.venue.name}: #{@track.name}"
  end


  
end