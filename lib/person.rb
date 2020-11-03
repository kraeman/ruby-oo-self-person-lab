# your code goes here
class Person
    def initialize(name)
        @name = name
        self.bank_account = 25
        @happiness=(8)
        @hygiene = 8
    end 

    attr_reader :name
    attr_accessor :bank_account

    def happiness
        if @happiness >= 0 && @happiness <= 10
            @happiness
        elsif @happiness > 10
            @happiness = 10
        else
            @happiness = 0
        end
    end

    def happiness=(suh)
        @happiness = suh
    end

    def hygiene
        if @hygiene >= 0 && @hygiene <= 10
            @hygiene
        elsif @hygiene > 10
            @hygiene = 10
        else
            @hygiene = 0
        end
    end

    def hygiene=(suh)
        @hygiene = suh
    end


    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
            
        self.hygiene=(4 + self.hygiene)
        
        "♪ Rub-a-dub just relaxing in the tub ♫" 
    end

    def work_out
        self.happiness += 2
    
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
          self.happiness -= 2
          friend.happiness -= 2
          "blah blah partisan blah lobbyist"

        elsif topic == "weather"
                self.happiness += 1
                friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end