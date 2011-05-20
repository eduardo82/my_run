module UsersHelper
  def calc_total
    Run.sum(:distance, :conditions => ['user_id =?', params[:id]])
  end
  
  def calc_week
  end
  
  def calc_month
    Run.sum(:distance, :conditions => 'MONTH(day)=MONTH(curdate())')
    
  end
end
