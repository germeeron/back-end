class Country

    attr_accessor :capital, :language, :hello

    def initialize(capital, language, hello)
        @capital = capital
        @language = language
        @hello = hello
        @language_status = :off
    end

    def say_hello
        puts "Saying hello in #{@language}..."
        @language_status = :on
        puts @hello
    end

    def visit
        puts "Arrived in #{@capital}..."
        say_hello
    end

end