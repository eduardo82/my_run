module UsersHelper
  def calc_total
    Run.sum(:distance, :conditions => ['user_id =?', params[:id]])
  end
  
  def calc_week
    Run.sum(:distance, :conditions =>'DAY(day)>=DAY(curdate())-7 and MONTH(day)=MONTH(curdate())')
  end
  
  def calc_month
    Run.sum(:distance, :conditions => 'MONTH(day)=MONTH(curdate())')    
  end
  
  def calc_year
    Run.sum(:distance, :conditions => 'YEAR(day)=YEAR(curdate())')
  end
end
