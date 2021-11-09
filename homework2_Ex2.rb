puts 'Enter the number'
loop do
  result = gets.chomp
    if result =~ /1.*1/
      puts "Conditions are not met, I stop the program"
      break
   else
      puts result.to_i * 256
    end
end
