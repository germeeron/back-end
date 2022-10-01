# 26 september 2022

# class methods and mixins

# mixins for classes
# array includes Enumerable
# integer includes Comparable
# string includes Comparable

# video game you can compare class Player
# you can define this in your <=> (spaceship) operator

class Player
    include Comparable        

    attr_reader :rating

    def initialize(name, rating)
        @name = name
        @rating = rating
    end

    def <=>(other)
        rating - other.rating       # result is negative, positive or 0
    end
end

kobe = Player.new("Kobe", 100)
lebron = Player.new("Lebron", 90)

kobe > lebron           # syntactic sugar
kobe.>(lebron)          # what happens


# you can also do your own module

module Compare
    def >(other)
        return true if (self <=> other) > 1
        false
    end

    def <(other)
        return true if (self <=> other) < 1
        false
    end

    def ==(other)
        return true if (self <=> other) == 0
        false
    end
end

puts kobe == lebron
puts kobe < lebron




class Player
    include Compare      

    attr_reader :rating

    def initialize(name, rating)
        @name = name
        @rating = rating
    end

    def <=>(other)
        rating - other.rating       # result is negative, positive or 0
    end
end

kobe = Player.new("Kobe", 100)
lebron = Player.new("Lebron", 90)

kobe > lebron           # syntactic sugar
kobe.>(lebron)          # what happens