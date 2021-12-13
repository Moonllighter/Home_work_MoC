class BricksFactory
  require './homework4_Ex2.rb'
  include BricksSort

  attr_accessor :sum_of_bricks

  def initialize(sum_of_bricks)
    @sum_of_bricks = sum_of_bricks
  end

  def creation_bricks
    colour = []
    state = []
    numbers = []
    @result = []
      @sum_of_bricks.times do |number|
        colour << %w[red yellow white black][rand(4)]
          if rand(5) == 4
          state << 'broken'
          numbers << nil
        else
          state << 'whole'
          numbers << number+1
        end
        @result << [colour[number],numbers[number], state[number]]
      end
      @result
  end

  def whole_bricks
    creation_bricks
    @whole_result = []
    @result.map do |a|
      if a.include?('whole')
        @whole_result << a 
      end
    end
    @whole_result     
  end

  def last_whole_bricks(colour_user = 'white')
    whole_bricks
    ten_last_bricks = []
    @whole_result.map do |a|
      if a.include?(colour_user)
        ten_last_bricks << a        
      end
    end
    ten_last_bricks.last(10)    
  end

  def colour_sort_whole
    whole_bricks
    @whole_result.sort_by{|info| info[0]}
  end
end