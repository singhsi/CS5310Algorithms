=begin
Programmer: Simranjit Singh
Assignment 3
Due Date: Oct. 02, 2015
=end

load './Edge.rb'
load './Graph.rb'
load './Vertex.rb'
load './Cluster.rb'
load './KruskalMST.rb'
require 'benchmark'

vista = Vertex.new("Vista")
porter = Vertex.new("Porter")
bolt = Vertex.new("Bolt")
iap = Vertex.new("InternetAccessPoint")
cathedral = Vertex.new("Cathedral")
belle = Vertex.new("Belle")
arch = Vertex.new("Arch")
dip = Vertex.new("Dip")
dott = Vertex.new("Dott")
vertices = [vista,porter,bolt,iap,cathedral,belle,arch,dip,dott]

vista_porter = Edge.new(vista,porter,22)
vista_arch = Edge.new(vista,arch,36)
vista_dip = Edge.new(vista,dip,12)
porter_dip = Edge.new(porter,dip,17)
porter_dott = Edge.new(porter,dott,15)
porter_bolt = Edge.new(porter,bolt,16)
bolt_dott = Edge.new(bolt,dott,13)
bolt_iap = Edge.new(bolt,iap,35)
iap_dott = Edge.new(iap,dott,33)
iap_cathedral = Edge.new(iap,cathedral,26)
cathedral_dott = Edge.new(cathedral,dott,38)
cathedral_belle = Edge.new(cathedral,belle,21)
belle_dott = Edge.new(belle,dott,37)
belle_dip = Edge.new(belle,dip,35)
belle_arch = Edge.new(belle,arch,18)
arch_dip = Edge.new(arch,dip,42)
dip_dott = Edge.new(dip,dott,8)

edges = [vista_porter,vista_arch,vista_dip,porter_dip,porter_dott,porter_bolt,bolt_dott,bolt_iap,iap_dott,iap_cathedral,cathedral_dott,cathedral_belle,belle_dott,belle_dip,belle_arch,arch_dip,dip_dott]

graph = Graph.new(vertices,edges)
mst = Array.new()
kruskal = Kruskal.new()
time = Benchmark.measure do
	mst = kruskal.kruskalMST(graph)
end
puts "Time it took to run Kruskal: #{time*1000}"
puts
puts "Printing Spanning Tree"
mst.each do |edge|
	edge.to_s
end
puts "End printing Spanning Tree"
