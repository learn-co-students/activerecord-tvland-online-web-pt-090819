class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through, :characters
  
  def actor_list
    self.actor.map {|a| a.full_name}
  end
  
end