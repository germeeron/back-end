# class demo 1

class Employee              # parent class
    attr_accessor :sex, :age, :rating, :base_salary

    def initialize(age, sex)
        @sex = sex
        @age = age
        @active = true      # employed
        @rating = nil       # 1 to 5
        @base_salary = 50000
    end

    def resign
        @active = false     # resigned
    end

    def resigned?
        !@active
    end
end

module OvertimePayable              # related behaviors, not class
    def calculate_overtime_pay
        base_salary * 2             #self.base_salary - self points to the instance = shawn = designer object
    end
end

class Designer < Employee
    include OvertimePayable
end

class Accountant < Employee         # child class
    include OvertimePayable
    
    def audit
        puts "Auditing..."
    end
end

class SoftwareEngineer < Employee   # child class, with related subclasses
    include OvertimePayable

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

    def display_age
        # puts "CTO's age is #{self.age()}"
        puts "CTO's age is #{age}"      # implicit self - self.age
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

# john = CTO.new(25, "M", 40)
# puts john.age
# puts john.equity

# puts john.resigned?
# puts john.resign
# puts john.resigned?

#3 ways to pass super
#super(age, sex)
#super      => will pass all original variables
#super()    => zero variables

# puts john
# john.display_age

# shawn = Designer.new(25, "M")

# puts shawn.calculate_overtime_pay

# method visibility

# 1 - public
# 2 - private
# 3 - protected - essentially private with a twist

class Foo
    def main_method_one
        puts "main one logic here"
        helper_method
    end

    def main_method_two
        puts "main two logic here"
        helper_method
    end

    def main_method_three
        puts "main three logic here"
        helper_method
    end

    private         # for internal use only (within the class Foo)

    def helper_method
        puts "shared logic here"
    end
end

foo = Foo.new

foo.main_method_one
foo.main_method_two
foo.main_method_three

foo.helper_method