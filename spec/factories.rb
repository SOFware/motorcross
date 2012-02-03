FactoryGirl.define do
  factory :session do
    date                 Date.today
    time                 Time.now
    front_psi            12.0
    rear_psi             12.0
    front_gearing        10
    rear_gearing         10
    fork_spring_rate     5.3
    fork_compression     5
    fork_rebound         12
    shock_spring_rate    2.3
    compression_high     12
    compression_low      3.4
    rebound              12
    sag                  12
    temp                 61
    venue
    track
    bike
    session_type
    ground_condition
    weather_condition
    front_tire
    rear_tire
  end

  factory :session_type do
    name 'practice'
  end

  factory :bike do
    manufacturer 'Honda'
    model 'xc450'
    year '2010'
  end

  factory :track do
    name 'pro motocross'
    soil
    track_type
    venue
  end

  factory :soil do
    name 'clay'
  end

  factory :track_type do
    name 'motocross'
  end

  factory :venue do
    name 'NCMP'
  end

  factory :ground_condition do
    name 'muddy'
  end

  factory :weather_condition do
    name 'sunny'
  end

  factory :tire, :aliases => [:rear_tire, :front_tire] do
    manufacturer 'Dunlop'
    model '100'
  end

end
