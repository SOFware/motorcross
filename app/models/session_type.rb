# == Schema Information
#
# Table name: session_types
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class SessionType < ActiveRecord::Base
  has_many :sessions

  def name=(name)
    self[:name] = ApplicationHelper::fix_caps(name)
  end
  
  def session_type_name
    name
  end
  

end
