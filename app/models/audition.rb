class Audition < ActiveRecord::Base
  has_many :roles


  def tester 
    self.roles.map do |r|
        puts r.character_name
    end 
  end 
end