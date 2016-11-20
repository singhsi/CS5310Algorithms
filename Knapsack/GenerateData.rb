data_file = File.new("data15000.txt", "a+")
data_file.puts "10"
(1..15000).each do |size|
    benefit = rand(1..10)
    weight = rand(1..10)
    data_file.puts "#{benefit},#{weight}"
end