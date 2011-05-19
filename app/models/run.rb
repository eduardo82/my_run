class Run < ActiveRecord::Base
  belongs_to :user
  after_save :calc_average
  
  
  def calc_average
    self.update_attributes(:average => self.distance * 4)
    self.update_attributes(:calories => self.distance * 3)
  end
end
