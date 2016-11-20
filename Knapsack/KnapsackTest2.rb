=begin
PROGRAMMER: Simranjit Singh
ASSIGNMENT: Assignment2
DUE DATE: September 21, 2015
REFERENCES
1.	https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/45-more-classes/lessons/110-instance-variables
2.	http://stackoverflow.com/questions/8737421/trying-to-learn-understand-ruby-setter-and-getter-methods
3. http://www.tutorialspoint.com/ruby/ruby_loops.htm
4. http://stackoverflow.com/questions/1359370/how-do-you-find-a-min-max-with-ruby
5. http://stackoverflow.com/questions/6242311/quickly-get-index-of-array-element-in-ruby
6. https://www.youtube.com/watch?v=uLHloweMnIs
=end

load './Knapsack.rb'
require './Item'
require 'benchmark'

#Create a new item object - Item.new(benefit,weight)
item1=Item.new(6,3)
item2=Item.new(2,1)

time_file = File.new("timelog.txt", "a+")
test_files = ["data10.txt","data100.txt","data1000.txt","data2000.txt","data3000.txt","data4000.txt","data5000.txt",
	"data6000.txt","data7000.txt","data8000.txt","data9000.txt","data10000.txt","data11000.txt","data12000.txt",
	"data13000.txt","data14000.txt","data15000.txt"]
test_files.each do |test_file|
	open_file = File.open(test_file)
	items = Array.new
	max_weight = open_file.readline.to_i
	open_file.each_line do |line|
		item = line.split(",").each {|e| e.strip!}
		items << Item.new(item[0].to_i, item[1].to_i)
	end
	x = Array.new
	time = Benchmark.realtime do
		(1..10).each do |t|
			x.clear
			x = fractionalKnapsack(items.clone,max_weight)
		end
	end
	time_file.puts("#{items.size},#{time/10}")
end
