=begin
Programmer: Simranjit Singh
Assignment 6
Due Date: Nov. 21, 2015
=end
=begin
  The Vertex class keeps track of
  name of each vertex. This is equivalent
  to a Node class.
=end
class Vertex
  def initialize(name)
    @name = name
  end

  def getName
    @name
  end
  #The == operater is overidden to
  #to compare the vertices by name.
  def ==(vertex)
    @name == vertex.getName
  end

end
