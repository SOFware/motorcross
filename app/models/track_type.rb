# == Schema Information
#
# Table name: track_types
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TrackType < ActiveRecord::Base
  has_many :tracks
end
