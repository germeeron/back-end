def unique_in_order(input)
    if input.include? input
        input = input.split(//)
    end

    input.each_with_index do | element, i |
        if (element == input[i + 1])
            input.delete_at(i + 1)
        end
    end
    puts input
end

puts unique_in_order("AAAABBBCCDAABBB")
puts unique_in_order("ABBCcAD")
puts unique_in_order([1,2,2,3,3])