load './vertex.rb'
load './edge.rb'
load './graph.rb'
load './dijkstra.rb'

#Create vertices
hnl = Vertex.new("HNL")
sfo = Vertex.new("SFO")
lax = Vertex.new("LAX")
ord = Vertex.new("ORD")
dfw = Vertex.new("DFW")
lga = Vertex.new("LGA")
pvd = Vertex.new("PVD")
mia = Vertex.new("MIA")
vertices = [hnl, sfo, lax, ord, dfw, lga, pvd, mia]
#Create Edges
hnl_lax = Edge.new(hnl, lax, 2555)
sfo_lax = Edge.new(sfo, lax, 337)
sfo_ord = Edge.new(sfo, ord, 1843)
lax_ord = Edge.new(lax, ord, 1743)
lax_dfw = Edge.new(lax, dfw, 1233)
ord_dfw = Edge.new(ord, dfw, 802)
ord_pvd = Edge.new(ord, pvd, 849)
dfw_lga = Edge.new(dfw, lga, 1387)
dfw_mia = Edge.new(dfw, mia, 1120)
lga_pvd = Edge.new(lga, pvd, 142)
lga_mia = Edge.new(lga, mia, 1099)
pvd_mia = Edge.new(pvd, mia, 1205)
edges = [hnl_lax, sfo_lax, sfo_ord, lax_ord, lax_dfw, ord_dfw, ord_pvd,
         dfw_lga, dfw_mia, lga_pvd, lga_mia, pvd_mia]

#Create a new Graph object and pass vertices and edges
g = Graph.new(vertices,edges)

#Create new Dijkstra's object and pass the graph and source vertex
dijk = Dijkstra.new
d = dijk.dijkstra_shortest_path(g,pvd)
d.each do |vertex,dvalue|
  puts "D[#{vertex.getName}]=#{dvalue.round}"
end