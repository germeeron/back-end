def is_isogram(word)
    word = word.downcase
    word.each_char do | char |
        y = word.count(char)
        return false if y > 1
    end
    return true
end

puts is_isogram("Dermatoglyphics")
puts is_isogram("aba")
puts is_isogram("moOse")