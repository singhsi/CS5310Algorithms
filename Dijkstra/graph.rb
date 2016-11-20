=begin
Programmer: Simranjit Singh
Assignment 6
Due Date: Nov. 21, 2015
=end

=begin
  The graph class contains all the edges and vertices
=end
class Graph
  def initialize(vertices,edges)
    @vertices = vertices
    @edges = edges
  end
  def getEdges
    @edges
  end
  def getVertices
    @vertices
  end
end
