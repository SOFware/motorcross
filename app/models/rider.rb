class Rider < ActiveRecord::Base
  has_many :bikes
  has_many :equipments
  
end
