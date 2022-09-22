class Country

    attr_accessor :capital, :language, :hello

    def initialize(capital, language, hello)
        @capital = capital
        @language = language
        @hello = hello
        @language_status = :off
    end

    def say_hello
        @language_status = :on
        puts @hello
    end

end