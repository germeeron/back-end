# 24 september 2022

# 4 pillars / principles of oop

# i. abstraction
# ii. encapsulation
# iii. inheritance
# iv. polymorphism

# i. abstraction

class TimeSetter

    def self.convert(d)
        y = 1980
        while (d > 365) do
            if (y % 400 == 0 ||                     # if leap year
                (y % 4 == 0 && y % 100 != 0))
                if (d > 366)
                    d -= 366
                    y += 1
                end
            else
                d -= 365
                y += 1
            end
        end
        return y
    end

end

# with abstraction

class DateCalculator
    attr_accessor :days, :year

    def initialize(days)
        @days = days
        @year = 1980
    end
    
    def convert
        while (days > 365) do
            if leap_year?
                add_leap_year
            else
                add_regular_year
            end
        end
        return year
    end

    # extracted methods

    def leap_year?
        (@year % 400 == 0 ||
        (@year % 4 == 0 && year % 100 != 0))
    end
    
    def add_leap_year
        if (@days >= 366)
            @days -= 366
            @year += 1
        end
    end

    def add_regular_year
        @days -= 365
        @year += 1
    end
end

# abstraction - hiding complexity
# convert method - focused on the what, not the how - this makes it readable / high-level
# leap_year? - focused on the how


# ii. encapsulation
# bundling of behaviors that manipulate the data
# data and methods are encapsulated in an object


# iii. inheritance
# class inheritance
# module inheritance
# DRY code
# hierarchies in the real world can be reflected in code


# iv. polymorphism
# the provision of a single interface to entities of different types
# single method to objects of different types
# same method, same interface - different objects, different results