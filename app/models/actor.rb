class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
      roles = []
      list_of_characters = self.characters.map {|character| character.name}
      list_of_shows = self.shows.map{|shows| shows.name}
      role = list_of_characters.concat list_of_shows
      roles << role.join(" - ")
      roles
  end

end
