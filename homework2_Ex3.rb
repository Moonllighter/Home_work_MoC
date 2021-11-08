puts 'Enter your favorite cities'
like = gets.chomp
puts 'Enter the cities you hate the most'
unlike = gets.chomp
result = like.squeeze(" ").split(', ').sort + unlike.squeeze(" ").split(', ').sort
puts result.join(", ")