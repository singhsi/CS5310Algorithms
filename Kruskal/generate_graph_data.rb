vertices = Array.new
edge_created = Array.new
filepostfix = 0
num_of_nodes = 0
(1..20).each do
	filepostfix += 1
	num_of_nodes += 10
	data_file = File.new("data#{filepostfix}.txt", "a+")
	vertices.clear
	edge_created.clear
	data_file.write "0"
	vertices << "0"
	(1..num_of_nodes-1).each do |vertex|
		data_file.write ",#{vertex}"
		vertices << "#{vertex}"
	end

	vertices.each do |vertex1|
		(0..vertices.size-1).each do |vertex2|
			if(!vertex2.to_s.eql?vertex1 and !edge_created.include?("#{vertex1.to_s}#{vertex2.to_s}"))
				edge_created << "#{vertex1.to_s}#{vertex2.to_s}"
				edge_created << "#{vertex2.to_s}#{vertex1.to_s}"
				data_file.puts
				data_file.write "#{vertex1},"
				data_file.write "#{vertex2},"
				data_file.write "#{rand(1..10000)}"
			end
		end
	end
end
