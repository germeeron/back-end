def disemvowel(string)
    new_arr = []

    string.each_char do |char|            # loop
        if char != 'a' && 'e' && 'o'
            new_arr << char
        end
    end
    
    new_arr                 # return
end

puts disemvowel("This website is for losers LOL!")