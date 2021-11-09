puts 'Enter your favorite cities'
like = gets.chomp
puts 'Enter the cities you hate the most'
unlike = gets.chomp
result = like.split(',').sort + unlike.split(',').sort
puts result.map{|i| i.strip}.join(", ")
