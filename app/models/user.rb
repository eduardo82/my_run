class User < ActiveRecord::Base
  has_many :runs
  before_save :encrypt
  has_attached_file :photo, :styles => { :small => "100x100>", :medium => "150x150>"},
                    :url  => "/users/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/users/:id/:style/:basename.:extension"                  
                    
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  def encrypt
    self.userpass = Digest::SHA256.hexdigest("#{self.userpass}")
  end
  
  def self.digest(val)
    Digest::SHA256.hexdigest("#{val}")
  end
  
  def self.login(login, password)
    self.find_by_username_and_userpass(login, User.digest(password))
  end
  
end
