def is_isogram(word)
    i = 0
    x = []
    word = word.downcase
    while i <= word.length
        letter = word[i]
        y = word.count(letter.to_s)
        x << y
        i = i + 1
    end
    return x.any?{|x| x > 1} ? false : true
end

word1 = "Dermatoglyphics"
puts "#{is_isogram(word1)}"

word2 = "aba"
puts "#{is_isogram(word2)}"

word3 = "moOse"
puts "#{is_isogram(word3)}"