# == Schema Information
#
# Table name: equipment
#
#  id           :integer         not null, primary key
#  manufacturer :string(255)
#  model        :string(255)
#  rider_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#  type         :string(255)
#  year         :integer
#

class Equipment < ActiveRecord::Base
  belongs_to :rider
  
  
  def make_and_model
    "#{manufacturer} #{model}"
  end
end
