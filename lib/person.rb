# your code goes here
require "pry"

class Person
    attr_reader :name
    # reader only lets you read it.  this can't be changed later
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        # upon init the name is the only thing i want to be able to pass in and the rest of the @'s are able to change later on    newName.bank_account = 60
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = if value >= 10
            10
        elsif value <= 0
            0
        else
            value
        end
                # @happiness = num.clamp(0, 10) i like this!
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
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
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end




# binding.pry