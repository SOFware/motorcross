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
  
  def name=(name)
    self[:name] = ApplicationHelper::fix_caps(name)
  end
  
  def ground_state
    name
  end
end
