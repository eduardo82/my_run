class Run < ActiveRecord::Base
  belongs_to :user
  before_save :calc_average, :calc_calories
  
   def calc_average
     self.average = self.alltime.to_f/(self.distance/100)
    end
   
   def calc_calories
     self.calories = self.distance
   end
end
