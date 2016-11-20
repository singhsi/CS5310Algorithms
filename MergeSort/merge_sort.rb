=begin
Programmer: Simranjit Singh
Assignment 7
Due Date: Dec. 05, 2015
=end

class Sort
  #mergesort is implemented with recurssion 
  def mergesort(input_array)
    #input_array (a) is an array containing n elements 
    n = input_array.size

    #if(n==1) return a
    return input_array if n == 1

    #var l1 as array = a[1] ... a[n/2]
    #var l2 as array = a[n/2+1] ... a[n]
    split_array = divide_array(input_array)
    l1 = split_array[0]
    l2 = split_array[1]
    
    #l1 = mergesort( l1 )
    #l2 = mergesort( l2 )
    l1 = mergesort(l1)
    l2 = mergesort(l2)
    
    #return merge( l1, l2 )
    return merge(l1,l2)
  end

  #merge function sorts and merges the two arrays
  def merge(array1,array2)
    #var c(array3) as array
    array3 = Array.new

    #while ( a and b have elements )
      #if ( a[0] > b[0] )
        #add b[0] to the end of c
        #remove b[0] from b
      #else
        #add a[0] to the end of c
        #remove a[0] from a
    while(!array1.empty? and !array2.empty?)
      if array1[0] > array2[0]
        array3.push(array2[0])
        array2.delete_at(0)
      else
        array3.push(array1[0])
        array1.delete_at(0)
      end
    end

    #while ( a has elements )
      #add a[0] to the end of c
      #remove a[0] from a
    while(!array1.empty?)
      array3.push(array1[0])
      array1.delete_at(0)
    end
    
    #while ( b has elements )
      #add b[0] to the end of c
      #remove b[0] from b
    while(!array2.empty?)
      array3.push(array2[0])
      array2.delete_at(0)
    end
    #return c
    array3
  end

  #divide_array funtion is used by mergesort
  #to divide an array into two arrays.
  def divide_array(input_array)
    return_array = input_array.each_slice(input_array.size/2).to_a
    if return_array.size > 2
      return_array = [return_array[0],return_array[1].concat(return_array[2])]
    end
    return return_array
  end
end

msort_algo = Sort.new
an_array = [99,4,32,11,1,24,9,34,15]
sorted_array = msort_algo.mergesort(an_array)
puts "Before Sorting: #{an_array}"
puts "After Sorting: #{sorted_array}"