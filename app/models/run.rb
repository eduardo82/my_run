class Run < ActiveRecord::Base
  belongs_to :user
  before_save :calc_average
  
   def calc_average
     self.average = self.distance/self.alltime
   end
   
   def calc_calories
     self.calories = self.distance
   end
end
