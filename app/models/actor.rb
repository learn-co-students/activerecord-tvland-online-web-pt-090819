class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    put "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    characters.each do |char|
      char.name == self
    end
  end
end