def is_isogram(word)
    i = 0
    x = []
    word = word.downcase
    while i <= word.length
        y = word.count(word[i].to_s)
        x << y
        i = i + 1
    end
    return x.any?{|x| x > 1} ? false : true
end

puts is_isogram("Dermatoglyphics")
puts is_isogram("aba")
puts is_isogram("moOse")