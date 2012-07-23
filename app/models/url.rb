class Url < ActiveRecord::Base
  attr_accessible :link 
  validates_uniqueness_of :link
  
  def name
    @name
  end

  def name=(blah)
    @name = blah
  end
end

