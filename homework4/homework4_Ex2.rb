module BricksSort
  def sorter_bricks(name)
    error_arr = []
    case name
    when 'color'
      @new_bricks.sort_by{|bricks| bricks.color}
    when 'serial_number'
      @new_bricks.sort_by{|bricks| bricks.serial_number}
    when 'state'
      @new_bricks.sort_by{|bricks| bricks.state}
    else
      error_arr << name
      puts "sorry this item doesn't exist #{error_arr}"
    end    
  end
end