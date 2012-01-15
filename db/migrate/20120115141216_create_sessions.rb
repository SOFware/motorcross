class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.date        :date
      t.time        :time
      t.integer     :track_id
      t.integer     :event_id
      t.integer     :ground_condition_id
      t.integer     :sky_condition_id
      
      t.float       :front_psi
      t.float       :rear_psi
      t.integer     :front_tire_id
      t.integer     :rear_tire_id      
      
      t.integer     :front_gearing
      t.integer     :rear_gearing
      
      t.float       :fork_spring_rate
      t.integer     :fork_compression
      t.integer     :fork_rebound
      
      t.float       :shock_spring_rate
      t.integer     :compression_high
      t.float       :compression_low
      t.integer     :rebound
      t.integer     :sag
      
      t.timestamps
    end
  end
end
