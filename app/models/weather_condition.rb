# == Schema Information
#
# Table name: weather_conditions
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class WeatherCondition < ActiveRecord::Base
  has_many :sessions

  def weather
    name
  end

end
