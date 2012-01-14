# == Schema Information
#
# Table name: racing_series
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RacingSeries < ActiveRecord::Base
end
