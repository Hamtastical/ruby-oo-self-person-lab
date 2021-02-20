# your code goes here

require "pry"

class Person #Make a person class
     attr_reader :name, :bank_account, :happiness, :hygiene #reader for bank_account and name


    def initialize(name)  #initialize name and defaulted account of $25
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name #setter for the name
        @name
    end


    def bank_account=(bank_account) #setter for the bank_account and can change the amount
        @bank_account = bank_account
        #binding.pry
    end

    def happiness=(happiness)

        @happiness = happiness

        if @happiness > 10 #if happiness is greater than 10...
             @happiness = 10 #happiness should still = 10 since it is the cap
        end

        if @happiness < 0 #if happiness is less than 0
            @happiness = 0 #happiness = 0 cause it can't be less than
        end
        
    end

    def hygiene=(hygiene)

        @hygiene = hygiene 

        if @hygiene > 10 #if hygiene is greater than 10...
            @hygiene = 10 #hygiene should still = 10 since it is the cap
       end

       if @hygiene < 0 #if hygiene is less than 0
           @hygiene = 0 #hygiene = 0 cause it can't be less than
       end

    end

    def happy?
        if @happiness > 7  #if happiness is greater than 7
             true 
        else 
            false
        end

    end

    def clean?

        if @hygiene > 7
            true

        else
            false
        end
    end

    def get_paid(salary) #takes in argument of a salary to add to bank account

       @bank_account += salary #bank account instance variable plus and equals what is added with the salary
       "all about the benjamins" #puts out string

    end

    def take_bath
        self.hygiene += 4 #add by 4 points, but uses self. method to call upon instance variable to make sure it keeps the initial method (not going over 10)
        "♪ Rub-a-dub just relaxing in the tub ♫" #puts out string
    end

    def work_out
        self.hygiene -= 3 #same as above, makes the hygiene value -3, but calling self will ensure it does not go below 0
        self.happiness += 2 #make the person happpier by 2 points
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend) #takes in instance of person's class, calling argument "friend"
        self.happiness += 3 #raises happiness by 3 point (remember to call self to the instance variable to keep original method)
        friend.happiness += 3 #call another instance of the class Person (friend argument), then ".happiness" to aligne it and pass throguth "friend" which affecs them
        "Hi " + friend.name + "!" + " It's "  + name + "." + " How are you?" #calls friend.name (whoever assigned name to this instance) and then name (another instance) and add into string together
    end

    def start_conversation(person, topic)

        if topic == "politics" #if the topic is politics
            person.happiness -= 2 # makes whatever name in person argument, the happines - and = 2
            self.happiness -= 2 # calls self on initial Person class and takes the happiness to - and = 2
            "blah blah partisan blah lobbyist" #puts out string

        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"

        else 
            "blah blah blah blah blah"
        end
    end
end