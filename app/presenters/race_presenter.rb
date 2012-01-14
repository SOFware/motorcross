class RacePresenter
  def initialize(race, template)
    @race = race
    @template = template
  end
  
  def listing
    "#{@race.track.name} #{nice_date}"
  end

  def nice_date
    "#{@race.date.strftime('%m-%d-%Y')}"
  end

  
end