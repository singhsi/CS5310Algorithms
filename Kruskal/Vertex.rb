=begin
Programmer: Simranjit Singh
Assignment 3
Due Date: Oct. 02, 2015
=end

class Vertex

  def initialize(name)
    @name = name
  end

  def getName
    @name
  end

  def ==(vertex)
    @name == vertex.getName
  end

end
