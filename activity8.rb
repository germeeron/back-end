def is_isogram(word)
    i = 0
    word = word.downcase
    while i <= word.length
        y = word.count(word[i].to_s)
        return false if y > 1
        i = i + 1
    end
    return true
end

puts is_isogram("Dermatoglyphics")
puts is_isogram("aba")
puts is_isogram("moOse")