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

end




# binding.pry