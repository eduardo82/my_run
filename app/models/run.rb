class Run < ActiveRecord::Base
  belongs_to :user
  before_create :calc_average

   def calc_average
     self.average = self.distance
     self.update_attributes(:average => self.average)
     return self.average
   end
end
