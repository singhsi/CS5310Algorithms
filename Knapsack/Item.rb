=begin
PROGRAMMER: Simranjit Singh
ASSIGNMENT: Assignment2
DUE DATE: September 21, 2015
=end

class Item
  def initialize(benefit,weight)
    @benefit = benefit
    @weight = weight
  end
  def benefit=(new_benefit)
	@benefit = new_benefit
  end
  def get_benefit
    @benefit
  end 
  def weight=(new_weight)
	@weight = new_weight
  end
  def get_weight
    @weight
  end
end