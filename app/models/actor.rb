require 'pry'
class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters 

    def full_name
        first = self.first_name
        last = self.last_name
        fullname = "#{first} #{last}"
    end

    def list_roles
 
        array =[]
        self.characters.each do |obj|
            array << "#{obj.name} - #{obj.show.name}"
        end 
        array
    end
  
end