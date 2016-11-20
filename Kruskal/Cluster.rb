=begin
Programmer: Simranjit Singh
Assignment 3
Due Date: Oct. 02, 2015
=end

class Cluster
  def initialize()
    @cluster = []
  end
  def getCluster
    @cluster
  end
  def <<(vertex)
    @cluster << vertex
  end
end
