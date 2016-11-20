=begin
Programmer: Simranjit Singh
Assignment 6
Due Date: Nov. 21, 2015
=end
class Dijkstra
=begin
The weight method return the cost
of adjacent edges.
=end
  def weight(u, z)
    distance = nil
    @edges.each do |edge|
      if edge.getStart == u and edge.getFinish == z
        distance = edge.getDistance
      elsif edge.getFinish == u and edge.getStart == z
        distance = edge.getDistance
      end
    end
    distance
  end

  def dijkstra_shortest_path(g, v)
    @vertices = g.getVertices
    @edges = g.getEdges
    cloud = Array.new
    d = Hash.new
#Assign 0 to source vertex and
#infinity to rest of vertices
    d[v] = 0
    @vertices.each do |u|
      d[u] = Float::INFINITY if u != v
    end
#Sort the priority queue according to d_value
    priority_queue = Hash.new
    priority_queue = d.sort_by { |vertex,d_val| d_val }.to_h
=begin
while the priority queue is not empty
add a vertex to the cloud
for that vertex find the adjacent vertices
and update their d values if necessary.
=end
    while !priority_queue.empty? do
      vertex_u, u = priority_queue.shift
      cloud << vertex_u if !cloud.include?(vertex_u)
      adjacent_array = Array.new
      #Find adjacent adges
      @edges.each do |edge|
        adjacent_array << edge.getFinish if vertex_u == edge.getStart
        adjacent_array << edge.getStart if vertex_u == edge.getFinish
      end
      #for the adjacent vertices updates their shortest distance from source vertex.
      adjacent_array.each do |vertex_z|
        if priority_queue.has_key?(vertex_z) and !cloud.include?(vertex_z)
          distance = weight(vertex_u,vertex_z)
          new_dvalue = u + distance.to_f
          if new_dvalue < d[vertex_z]
            d[vertex_z] = new_dvalue
            priority_queue[vertex_z] = d[vertex_z]
            priority_queue = d.sort_by {|vertex,d_val| d_val}.to_h
          end
        end
      end
    end
    d
  end
end
