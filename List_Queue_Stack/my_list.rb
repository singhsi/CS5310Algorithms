=begin
Programmer: Simranjit Singh
Assignment 5
Due Date: Nov. 02, 2015
=end
class Mylist
	def initialize
		@list_array = Array.new(5)
		@n = 0
	end

  	def add(index,element)
  		if index < 0 or index > @n
  			error = "Error: Index canot be more that n"
  		else
	  		if @n == @list_array.size
	  			last_array_index = @list_array.size - 1
	      		@list_array[last_array_index+5] = nil
	      	end
	  		if index < @n
	  			@n.downto(index) do |i|
	  				if @list_array[i] != nil
	  					@list_array[i+1] = @list_array[i]
	  				end
	  				#puts @list_array[i+1]
	  			end 
	  		end
	  		@list_array[index] = element
			@n += 1
			"-"
		end
  	end
  	
  	def remove(index)
  		if index < 0 or index > @n - 1
  			error = "Error: index cannot be more that n - 1"
  		else
	  		element = @list_array[index]
	  		if index < @list_array.size - 1
	  			index.upto(@list_array.size - 2) do |i|
	  				@list_array[i] = @list_array[i+1]
	  			end
	  		end
	  		@n -= 1
	  		element
  		end
  	end

  	def get(index)
  		if index < 0 or index > @n - 1
  			error = "Error: Index out of bound"
  		else
  			element = @list_array[index]
  		end
  	end
  	
  	def set(index, element)
  		if index < 0 or index > @n - 1
  			error = "Error: Index out of bound"
  		else
  			element_temp = @list_array[index]
  			@list_array[index] = element
  			element_temp
  		end
  	end
end

mylist = Mylist.new
puts mylist.add(0,"A")
puts mylist.add(0,"B")
puts mylist.get(1)
puts mylist.set(2,"C")
puts mylist.add(2,"C")
puts mylist.add(4,"D")
puts mylist.remove(1)
puts mylist.add(1,"D")
puts mylist.add(1,"E")
puts mylist.get(4)
puts mylist.add(4,"F")
puts mylist.set(2,"G")
puts mylist.get(2)