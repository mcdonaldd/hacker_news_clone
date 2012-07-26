class Url < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :link, :user_id
  validates_uniqueness_of :link
  
end

