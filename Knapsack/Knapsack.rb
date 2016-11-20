=begin
PROGRAMMER: Simranjit Singh
ASSIGNMENT: Assignment2
DUE DATE: September 21, 2015
=end
require './Item'

def fractionalKnapsack(itemsArray,maxWeight)
  #Return array
  x = []
  
  #value index of item 
  value = []
  index = 0
  
  #For each Item in itemsArray get its value
  itemsArray.each do |item|
    x[index] = 0
    value[index] = item.get_benefit/item.get_weight
    index = index+1
  end
  
  #total calculated weight
  totalWeight = 0
  iterationIndex = 0
=begin
This while loop gets the items that maximizes the benefit to add
items to your sack.
=end  
  while totalWeight < maxWeight && !itemsArray.nil? do
    iterationIndex = iterationIndex + 1
    #Get the Item with the max benefit
    maxValue = value.max
    maxIndex = value.index(maxValue)
  
    value[maxIndex] = -1

    #Get the weight for each item
    tempWeight = itemsArray[maxIndex].get_weight
    minWeight = [tempWeight,maxWeight-totalWeight].min
    x[maxIndex] = minWeight
    totalWeight = totalWeight + minWeight

    itemsArray[maxIndex] = nil
    if iterationIndex == itemsArray.length then
      itemsArray = nil
    end
  end
  
  return x
end

