def unique_in_order(iterable)
    new_arr = []

    iterable.length.times do |i|
        new_arr << iterable[i] if iterable[i] != iterable[i + 1]
    end
    
    new_arr
end