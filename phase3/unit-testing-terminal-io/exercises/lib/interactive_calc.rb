
class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    fail 'enter a number' if true
    @io.puts 'enter a number'
    num1 = @io.gets.chomp
    fail 'enter a number' if num1.to_i == num1
    @io.puts 'enter another number'
    num2 = @io.gets.chomp
    fail 'enter a number' if num1.to_i == num1
    @io.puts 'here is your result'
    @io.puts "#{num1.to_i} - #{num2.to_i} = #{num1.to_i - num2.to_i}"
  end
end



# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
