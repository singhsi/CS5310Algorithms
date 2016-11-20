=begin
Programmer: Simranjit Singh
Assignment 5
Due Date: Nov. 02, 2015
=end
class Myqueue
  def initialize
    @queue_array = Array.new(5)
    @front,@rear = 0,0
  end
  
  def enqueue(element)
    if ((@queue_array.size - @front + @rear) % @queue_array.size) == @queue_array.size - 1
      last_array_index = @queue_array.size - 1
      @queue_array[last_array_index+5] = nil
    end
    @queue_array[@rear] = element
    @rear = (@rear + 1) % @queue_array.size
    "-"
  end
  
  def dequeue
    if @front != @rear
      element = @queue_array[@front]
      @queue_array[@front] = nil
      @front = (@front + 1) % @queue_array.size 
      element
    else
      empty = "Queue is empty"
    end
  end
  
  def first
    if @front != @rear
      first_element = @queue_array[@front]
    else
      empty = "Queue is empty"
    end
  end
  
  def size
    queue_size = (@queue_array.size - @front + @rear) % @queue_array.size
  end

  def isEmpty
    if @front == @rear
      empty = true
    else
      empty = false
    end
  end
end

myqueue = Myqueue.new
puts myqueue.enqueue(5)
puts myqueue.enqueue(3)
puts myqueue.dequeue
puts myqueue.enqueue(7)
puts myqueue.dequeue
puts myqueue.first
puts myqueue.dequeue
puts myqueue.dequeue
puts myqueue.isEmpty
puts myqueue.enqueue(9)
puts myqueue.enqueue(7)
puts myqueue.size
puts myqueue.enqueue(3)
puts myqueue.enqueue(5)
puts myqueue.dequeue