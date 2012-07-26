class User < ActiveRecord::Base
  has_many :urls
  
  attr_accessible :email, :name, :password
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  
  before_save :create_remember_token
  
  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
