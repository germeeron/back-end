#activity 4

class Country

    attr_accessor :capital, :language, :hello

    def initialize(capital, language, hello)
        @capital = capital
        @language = language
        @hello = hello
        @language_status = :off
        @location_status = :off
    end

    def say_hello
        puts "Saying hello in #{@language}..."
        @language_status = :on
        puts @hello
    end

    def visit
        @location_status = :on
        puts "Arrived in #{@capital}..."
        say_hello
    end

end