# == Schema Information
#
# Table name: venues
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Venue < ActiveRecord::Base
  has_many :tracks
  has_many :events
  has_many :sessions

  def venue_name
    name
  end

  def name=(name)
    self[:name] = ApplicationHelper::fix_caps(name)
  end

end
