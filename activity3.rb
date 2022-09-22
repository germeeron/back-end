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
