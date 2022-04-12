# class Audition ✨👈 ActiveRecord::Base
class Audition < ActiveRecord::Base
    belongs_to :role


    # Audition#call_back will change the the hired attribute to true
    #### #<Audition>.call_back
    def call_back


        puts "- in call_back Method -"

        #### using .save

            # # self == #<Audition>
            # self.hired = true 

            # self.save
            # # to PERSIST change to db

        #### using .save


        #### using .update

            self.update( hired: true )

        #### using .update

        
    end

    
end  #### THE LAST  end



# Audition#role returns an instance of role associated with this audition

# Audition#call_back will change the the hired attribute to true




    # Audition#role 
    ## returns an instance of role associated with this audition
    # def role

    #     puts "- in role Method -"
    #     # some logic
    #     # Role -< Aud
    #     Role.all.each do | each_role |

    #         puts each_role

    #     end

    #     # return role_instance

    # end
