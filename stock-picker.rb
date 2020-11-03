def stockpicker(my_array)
    max_profit = 0
    my_array.each_with_index{|price, inx|
        inxx = inx
        until inxx == my_array.length
            if max_profit < my_array[inxx] - my_array[inx]
                max_profit = my_array[inxx] - my_array[inx]  
            end
            inxx += 1
        end
    }
    return max_profit
end

puts stockpicker([17, 3, 6, 9, 15, 8, 6, 1, 10])