class Role < ActiveRecord::Base
    has_many :auditions
  
    def roles_for_auditions
        self.auditions
    end 

    def actors

        # self.auditions.pluck(:actor)

        array = []
        self.auditions.map do |name|
            name = name.actor
            array << name
        end
        array
    end 

    def locations
        array = []
        # self.auditions.pluck(:location)

        self.auditions.map do |name|
            name = name.location
            array << name
        end
        array
    end 

    def lead

       found = self.auditions.where("hired = true")
       string = 'no actor has been hired for this role'

        return string unless found 
        found 
        # self.auditions.find_by(hired: true)
    
    end 

    def understudy
        
        found = self.auditions.where("hired = true")[1]
        return 'no actor has been hired for understudy for this role' unless found 
        found 

    end 

  end



