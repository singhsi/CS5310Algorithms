=begin
Programmer: Simranjit Singh
Assignment 6
Due Date: Nov. 21, 2015
=end

#The Edge class keeps track of the
#and edge cost between them.
class Edge
  def initialize(start,finish,distance)
    @start = start
    @finish = finish
    @distance = distance
  end

  def getStart
    @start
  end

  def getFinish
    @finish
  end

  def getDistance
   @distance
  end
end
