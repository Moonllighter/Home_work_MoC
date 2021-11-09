hash = {
   1    => 2,
   nil  => 3,
   'kEy' => :value_1,
   :key  => :value_2,
   Key:    :value_3
  }
  result=0
hash.each{ |key,value| result+=1 if key.to_s.downcase == 'key' }
puts result