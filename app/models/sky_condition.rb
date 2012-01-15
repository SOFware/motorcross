# == Schema Information
#
# Table name: sky_conditions
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class SkyCondition < ActiveRecord::Base
end
