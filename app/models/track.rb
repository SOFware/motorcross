# == Schema Information
#
# Table name: tracks
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  track_type :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Track < ActiveRecord::Base
end

