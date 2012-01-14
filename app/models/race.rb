# == Schema Information
#
# Table name: races
#
#  id         :integer         not null, primary key
#  date       :date
#  track_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Race < ActiveRecord::Base
  belongs_to :track
end
