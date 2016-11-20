=begin
Programmer: Simranjit Singh
Assignment 5
Due Date: Nov. 02, 2015
=end
class Mystack
  def initialize
    @stack_array = Array.new(5)
    @stack_index = -1
  end

  def push(o)
    n = @stack_array.size-1
    if(@stack_index+1==n)
      @stack_array[n+5]=nil
    end
    @stack_index += 1
    @stack_array[@stack_index] = o
    "-"
  end
  
  def pop()
    if(@stack_index < 0)
      empty = "Stack is empty"
    else
      e = @stack_array[@stack_index]
      @stack_array[@stack_index] = nil
      @stack_index -= 1
      e
    end
  end

  def top()
    if @stack_index >= 0
      top_item = @stack_array[@stack_index]
    end
  end

  def size()
    stack_size = @stack_index + 1
  end

  def isEmpty()
    if(@stack_index < 0)
      empty = true
    else
      empty = false     
    end
  end
end

mystack = Mystack.new
puts mystack.push(5)
puts mystack.push(3)
puts mystack.size
puts mystack.pop
puts mystack.isEmpty
puts mystack.pop
puts mystack.isEmpty
puts mystack.pop
puts mystack.push(7)
puts mystack.push(9)
puts mystack.top
puts mystack.push(4)
puts mystack.size
puts mystack.pop
puts mystack.push(6)
puts mystack.push(8)
puts mystack.pop
puts mystack.inspect