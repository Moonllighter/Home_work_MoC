module BricksSort
  def sorter_bricks(name)
    error_arr = []
    case name
    when 'colour'
      self.sort_by{|info| info[0]}
    when 'serial number'
      self.sort_by{|info| info[1]}
    when 'state'
      self.sort_by{|info| info[2]}
    else
      puts "sorry this item doesn't exist"
      error_arr << name
    end    
  end
end