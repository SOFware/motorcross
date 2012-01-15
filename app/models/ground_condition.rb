# == Schema Information
#
# Table name: ground_conditions
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class GroundCondition < ActiveRecord::Base
  has_many :sessions
end
