puts 'enter the name of the animal'
animal = gets.chomp.capitalize
case animal
  when "Cat"
      puts "#{animal} say MEOW"
  when 'Dog'
      puts "#{animal} say GAV"
  when 'Cow'
      puts "#{animal} say MOO"
  when 'Chicken'
        puts "#{animal} say Ko-Ko-Ko"
  else
      puts 'Sorry but this animal is not in the register'
end
        
