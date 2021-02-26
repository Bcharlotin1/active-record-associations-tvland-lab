require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
 
        array =[]
        self.characters.each do |obj|
            array << obj.actor.full_name
        end 
        array
    end

    
end