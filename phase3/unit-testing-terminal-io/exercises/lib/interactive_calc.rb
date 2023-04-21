
class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts 'enter a number'
    num1 = get_number
    @io.puts 'enter another number'
    num2 = get_number
    @io.puts 'here is your result'
    @io.puts "#{num1.to_i} - #{num2.to_i} = #{num1.to_i - num2.to_i}"
  end

  private
  def get_number
    response = @io.gets
    return response.to_i if response.to_i.to_s == response
    fail 'enter a number'
  end
end



# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
