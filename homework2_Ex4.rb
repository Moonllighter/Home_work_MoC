arr = [1324251322, 4, 5, 'r', 9999, '23']
def arr.my_own_map
  unless block_given?
    puts 'please add a block'
    return
  end
  collection_counter = 0
  result = []
  until collection_counter == size
    if self[collection_counter].is_a?(Integer)
      result << yield(self[collection_counter] * 2)
    else
      result << yield(self[collection_counter])
    end
    collection_counter += 1
  end
  result
end
puts arr.my_own_map{|i| i}