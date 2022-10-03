def unique_in_order(input)
    if input.include? input
        input = input.split(//)
    end

    y = []
    input.each_with_index do | element, i |
        if (element != input[i + 1])
            new_arr << element
        end
    end
    return new_arr
end

puts unique_in_order("AAAABBBCCDAABBB")
puts unique_in_order("ABBCcAD")
puts unique_in_order([1,2,2,3,3])