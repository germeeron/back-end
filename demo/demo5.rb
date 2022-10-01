# 26 september 2022

# class methods and mixins

class Employee
    @@employees = []                # class variable

    def initialize(age, sex)
        @age = age                  # instance variable
        @sex = sex
        @active = true              # employed
        @rating = nil
        @@employees << self         # will populate array every time we initialize
    end

    def resign
        #puts "value of self is #{self}"
        @active = false
        # active = false            # can be a local variable or you're calling setter method - interpret will prioritize local variable
    end

    def self.all                    # Employee.all
        #puts "value of self is #{self}"
        "#{@@employees}"            # converts array into string
    end

    def self.size
        @@employees.size
    end
end

#class SoftwareEngineer < Employee
#    @@software_engineer_count = 0

#    def initialize(age, sex)
#        super(age, sex)
#        @@software_engineer_count += 1
#    end

#    def self.total
#        @@software_engineer_count
#    end
#end

# puts SoftwareEngineer.total                   # 0
# puts Employee.total                           # 0

puts Employee.all                              # 0

abdul = Employee.new(31, "M")
puts Employee.all 

# puts abdul.resign

# vincent = Employee.new(25, "M")
# shawn = Employee.new(25, "M")
# germee = Employee.new(25, "F")

# puts Employee.size                              # 0