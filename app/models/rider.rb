# == Schema Information
#
# Table name: riders
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Rider < ActiveRecord::Base
  has_many :bikes
  has_many :equipments
  
end
