class Equipment < ActiveRecord::Base
  belongs_to :rider
  
  
  def make_and_model
    "#{manufacturer} #{model}"
  end
end
