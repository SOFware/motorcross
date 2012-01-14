# == Schema Information
#
# Table name: soils
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Soil < ActiveRecord::Base
  has_many :tracks
end
