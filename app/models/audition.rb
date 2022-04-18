class Audition < ActiveRecord::Base
    belongs_to :role

  def find_role
    
    self.role.character_name
  end 

  def call_back 

    # self.hired = true
    # self.save

    self.update(hired: true)
  end 

  
end