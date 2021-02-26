require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actor_list
 
        array =[]
        self.characters.each do |obj|

            # binding.pry
        end 
        array
    end
end