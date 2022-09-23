class Employee              # parent class
    attr_accessor :sex, :age, :rating

    def initialize(age, sex)
        @sex = sex
        @age = age
        @active = true      # employed
        @rating = nil       # 1 to 5
    end

    def resign
        @active = false     # resigned
    end

    def resigned?
        !@active
    end
end

class Accountant < Employee         # child class
    def audit
        puts "Auditing..."
    end
end

class SoftwareEngineer < Employee   # child class
    def write_code
        puts "Lorem ipsum..."
    end
end

class BackendEngineer < SoftwareEngineer
    def write_code
        puts "Backend lorem ipsum..."
    end
end

class FrontendEngineer < SoftwareEngineer
    def write_code
        puts "Frontend lorem ipsum..."
    end
end

class Manager < Employee            # child class
    def evaluate_performance(employee, rating)
        employee.rating = rating
        puts "New rating is #{employee.rating}"
    end
end

class CTO < Employee
    attr_reader :equity

    def initialize(age, sex, equity)
        super(age, sex)
        @equity = equity
    end

    def resign
        puts "Some additional paperwork for CTO before resigning..."
        super
    end

    def foobar
        # puts "CTO's age is #{self.age()}"
        puts "CTO's age is #{age}"      # implicit self
    end
end

# abdul = SoftwareEngineer.new(31, "M")
# justin = Accountant.new(25, "M")
# nieves = Manager.new(25, "F")

# puts abdul.age

# puts justin.resigned?
# justin.resign
# puts justin.resigned?

# puts nieves.sex

# puts abdul.write_code
# puts nieves.evaluate_performance(abdul, 5)
# puts justin.audit

# joseph = BackendEngineer.new(25, "M")
# vincent = FrontendEngineer.new(25, "M")

# puts joseph.write_code
# puts vincent.write_code

john = CTO.new(25, "M", 40)
# puts john.age
# puts john.equity

# puts john.resigned?
# puts john.resign
# puts john.resigned?

#3 ways to pass super
#super(age, sex)
#super      => will pass all original variables
#super()    => zero variables

puts john
john.foobar