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

#Create a new item object - Item.new(benefit,weight)
item1=Item.new(6,3)
item2=Item.new(2,1)

itemsArray=[item1,item2]
maxWeight = 10
x = fractionalKnapsack(itemsArray,maxWeight)
itemNum = 1
puts "Printing x values"
x.each do |xi|
	if xi != 0 then
		puts "#{xi} of Item#{itemNum}"
	end
	itemNum = itemNum + 1
end
