#activity 3

def is_perfect_square(x)
    i = 0
    loop do
        if i * i == x
            puts "yes, #{x} is a perfect square"
            break
        elsif i * i < x
            i = i + 1
        else
            puts "no, #{x} is not a perfect square"
            break
        end
    end
end
    
puts "#{is_perfect_square(15)}"


#def check_square(x)
    #i = 1
    #until i * i >= x do
        #if i * i == x do
            #puts "yes"
        #end
        #i = i + 1
    #end
#end

#puts "#{check_square(9)}" end
