require './homework4_Ex1_1.rb'
require './homework4_Ex2.rb'
class BricksFactory
  include BricksSort
  attr_reader :sum_of_bricks

  def initialize(sum_of_bricks)
    @sum_of_bricks = sum_of_bricks
  end

  def creation_bricks
    color = []
    state = []
    numbers = []
    @new_bricks = []
    broken_num = 1
      @sum_of_bricks.times do |number|
        color << %w[red yellow white black][rand(4)]
        if rand(5) == 4
          state << 'broken'
          numbers << '--'
          broken_num = broken_num - 1
        else
          state << 'whole'
          numbers << number+broken_num
        end
        @new_bricks << Bricks.new(color[number], numbers[number], state[number])
      end
      @new_bricks
  end

  def whole_bricks
    @whole_result = []
    @new_bricks.each do |a|
      if a.state == 'whole'
        @whole_result << a
      end
    end
    @whole_result
  end

  def last_whole_bricks(color_user = 'white')
    ten_last_bricks = []
    @whole_result.each do |a|
      if a.color == color_user
        ten_last_bricks << a
      end
    end
    ten_last_bricks.last(10) 
  end

  def color_sort_whole
    @whole_result.sort_by{|bricks| bricks.color}
  end
end