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

time_file = File.new("kruskaltimelog.txt", "a+")
test_files = ["data1.txt","data2.txt","data3.txt","data4.txt","data5.txt","data6.txt","data7.txt",
	"data8.txt","data9.txt","data10.txt","data11.txt","data12.txt","data13.txt","data14.txt",
	"data15.txt","data16.txt","data17.txt","data18.txt","data19.txt","data20.txt"]
test_files.each do |test_file|
	open_file = File.open(test_file)
	vertices = Array.new
	vertices_line = open_file.readline
	vertices_line.split(",").each do |vertex|
		vertices << Vertex.new(vertex.strip)
	end
	edges = Array.new
	open_file.each_line do |line|
		edge = line.split(",").each {|e| e.strip!}
		edges << Edge.new(Vertex.new(edge[0]),Vertex.new(edge[1]),edge[2].to_i)
	end
	edges_size = edges.size
	graph = Graph.new(vertices,edges)
	mst = Array.new()
	kruskal = Kruskal.new()
	time = Benchmark.realtime do
		mst = kruskal.kruskalMST(graph.clone)
 	end
	time_file.puts("#{edges_size},#{time}")
	puts mst.size
end
time_file.close
