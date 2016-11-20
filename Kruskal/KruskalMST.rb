=begin
Programmer: Simranjit Singh
Assignment 3
Due Date: Oct. 02, 2015

REFERENCES
1. http://www.tutorialspoint.com/ruby/ruby_loops.htm
2. http://stackoverflow.com/questions/2032875/syntax-for-a-for-loop-in-ruby
3. http://stackoverflow.com/questions/4596517/ruby-find-next-in-array
4. https://ariejan.net/2007/01/28/ruby-sort-an-array-of-objects-by-an-attribute/
5. http://www.aimred.com/news/developers/2008/10/05/dont-forget-about-to-s/
=end

class Kruskal
  def kruskalMST(graph)
    @clusterArray = []
    #define a elementary cluster for each vertex
    graph.getVertices.each do |vertex|
      cluster = Cluster.new()
      cluster << vertex
      @clusterArray << cluster
    end

    #priorityQueue is an array of edges
    priorityQueue = graph.getEdges
    priorityQueue.sort!
	
    #Return Minimum Spanning Tree
    minSpanTree = []

    while minSpanTree.size < graph.getVertices.size - 1 do
      minEdge = priorityQueue.pop
      vertexStart = minEdge.getStart
      vertexFinish = minEdge.getFinish
	  startCluster = clusterIndex(vertexStart)
	  finishCluster = clusterIndex(vertexFinish)
	  if startCluster != finishCluster
		minSpanTree << minEdge
		mergeCluster(startCluster,finishCluster)
	  end 
    end
	return minSpanTree
  end
=begin
clusterIndex iterates through clusterArray to find the index of the cluster with the passed in vertex.
=end
  def clusterIndex(vertex)
	@clusterArray.each_index do |index|
		
		if @clusterArray[index].getCluster.include?(vertex)
			return index
			break
		end
	end
  end	
	def mergeCluster(startCluster,finishCluster)
		cluster1 = @clusterArray[startCluster].getCluster
		cluster2 = @clusterArray[finishCluster].getCluster
		mergeC = cluster1.concat(cluster2)
		newCluster = Cluster.new()
		
		
		mergeC.each do |v|
			newCluster << v
		end
		
		@clusterArray.delete_at(startCluster)
		if startCluster > finishCluster
			@clusterArray.delete_at(finishCluster)
		else
			@clusterArray.delete_at(finishCluster-1)
		end
		
		@clusterArray << newCluster
  end
end
