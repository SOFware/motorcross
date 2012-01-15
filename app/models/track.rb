# == Schema Information
#
# Table name: tracks
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  soil_id       :integer
#  track_type_id :integer
#  altitude      :integer         default(0)
#  venue_id      :integer
#

class Track < ActiveRecord::Base
  belongs_to :track_type
  belongs_to :soil
  belongs_to :venue
  has_many :sessions
end

