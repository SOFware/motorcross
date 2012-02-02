# == Schema Information
#
# Table name: events
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  venue_id   :integer
#  created_at :datetime
#  updated_at :datetime
#  begin_date :date
#  end_date   :date
#

class Event < ActiveRecord::Base
  belongs_to :venue

  delegate :venue_name, :to => :venue


  def name=(name)
    self[:name] = ApplicationHelper::fix_caps(name)
  end


end
