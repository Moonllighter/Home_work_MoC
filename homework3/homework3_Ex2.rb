class String

  def valid?
    stack = []
    symbols = { '{' => '}', '[' => ']', '(' => ')', '<' => '>'}
    self.each_char do |c|
      stack << c if symbols.key?(c)
      return false if symbols.key(c) && symbols.key(c) != stack.pop
    end
    stack.empty?
  end
end