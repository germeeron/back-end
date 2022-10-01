# 26 september 2022

# class methods and mixins

class Employee
    @@employee_count = 0            # class variable

    def initialize(age, sex)
        @age = age                  # instance variable
        @sex = sex
        @active = true              # employed
        @rating = nil
        @@employee_count += 1       # will add 1 to number of employees every time we initialize
    end

    def resign
        @active = false
    end

    def self.total                  # Employee.total
        @@employee_count
    end
end

class SoftwareEngineer < Employee
    @@software_engineer_count = 0

    def initialize(age, sex)
        super(age, sex)
        @@software_engineer_count += 1
    end

    def self.total
        @@software_engineer_count
    end
end

puts SoftwareEngineer.total                 # 0
puts Employee.total                         # 0

abdul = Employee.new(31, "M")
vincent = Employee.new(25, "M")
shawn = SoftwareEngineer.new(25, "M")
germee = SoftwareEngineer.new(25, "F")

puts SoftwareEngineer.total                 # 4
puts Employee.total                         # 0