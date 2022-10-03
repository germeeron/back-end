def unique_in_order(iterable)
    new_arr = []                            # initialize

    iterable.length.times do |i|            # loop
        new_arr << iterable[i] if iterable[i] != iterable[i + 1]
    end
    
    new_arr                                 # return
end