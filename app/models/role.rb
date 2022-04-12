# A >- R
# R -< A
class Role < ActiveRecord::Base
    has_many :auditions  #  :: DATABASE BRAIN / LANGUAGE
    # have_many :auditions  :: HUMAN BRAIN


    # Role#actors returns an array 
    ## of names from the actors associated with this role
    ####  #<Role>.actors
    def actors

        puts " in actors Method"

        ####  using .each()

            # actor_names = []

            #     self.auditions.each do | each_audition |

            #         actor_names << each_audition.actor

            #     end

            # return actor_names

        ####  using .each()


        ####  using .map()

            return self.auditions.map do | each_audition |
                each_audition.actor
            end

            # self.auditions.map{ | each_audition| each_audition.actor }

        ####  using .map()


    end




    # Role#locations returns an array of locations from the auditions associated with this role
    def locations

        ####  using .each()

            actor_locations = []

                self.auditions.each do | each_audition |

                    actor_locations << each_audition.location

                end

            return actor_locations

        ####  using .each()

    end


    # Role#lead 
    ##  returns the first instance of the audition that was hired for this role 
    ### or returns a string 'no actor has been hired for this role'
    def lead 
    

        #                        self == #<Role>
        array_result_of_filter = self.auditions.filter do | that_audtion_instance |
            
            that_audtion_instance.hired == true

        end


        if (array_result_of_filter.size != 0  &&  array_result_of_filter.size > 0)

            return array_result_of_filter.first
        
        else 
            return 'no actor has been hired for this role'
        end


    end
    

    # Role#understudy 
    ##  returns the second instance of the audition that was hired for this role 
    ### or returns a string 'no actor has been hired for understudy for this role'
    def understudy

         #                        self == #<Role>
         array_result_of_filter = self.auditions.filter do | that_audtion_instance |
            
            that_audtion_instance.hired == true

        end


        if (array_result_of_filter.size != 0  &&  array_result_of_filter.size > 1)

            return array_result_of_filter.second
        
        else 
            return 'no actor has been hired for understudy for this role'
        end


    end



end  ####  LAST  end 



# Role#auditions returns all of the auditions associated with this role
## The LOLJK Deliveriable

# Role#actors returns an array of names from the actors associated with this role
# Role#locations returns an array of locations from the auditions associated with this role
# Role#lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
# Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'