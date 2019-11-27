class Show < ActiveRecord::Base
  has_many :actors, through, :characters
  
  def actor_list
    
  end
  
end