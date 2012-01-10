class Tire < ActiveRecord::Base
  
  
  def make_and_model
    "#{manufacturer} #{model}"
  end
end
