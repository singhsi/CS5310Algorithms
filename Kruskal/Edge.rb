=begin
Programmer: Simranjit Singh
Assignment 3
Due Date: Oct. 02, 2015
=end

class Edge
  def initialize(start,finish,distance)
    @start = start
    @finish = finish
    @distance = distance
  end

  def <=>(edge)
   edge.getDistance <=> @distance
  end

  def to_s
    puts "Edge #{@start.getName}_#{@finish.getName} is #{@distance}"
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
