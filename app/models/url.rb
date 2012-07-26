class Url < ActiveRecord::Base
  attr_accessible :link, :user_id
  belongs_to :user
 
  validates_uniqueness_of :link
  
  before_save do |url|
    self.link = "http://" + link
  end
  
  
end

