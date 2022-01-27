require 'pry-byebug'

test_array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]

class Node
  attr_accessor :value, :left_node, :right_node

  def initialize(value = nil, left_node = nil, right_node = nil)
    @value = value
    @left_node = left_node
    @right_node = right_node
  end

end

class Tree
  attr_accessor :array, :root
  
  def initialize(array = nil)
    @array = array
    @root = build_tree(array)
  end

  def build_tree(array)
    #base case
    if array.length() == 1
      root = array[0]
      node = Node.new(root)
      return root
    end
    
    #recursion
    array = array.sort
    array = array.uniq
    mid = (array.length() / 2)
    root = array[mid]
    p left_array = array[0..(mid-1)]
    p right_array = array[mid..-1]
    left_node = build_tree(left_array)
    right_node = build_tree(right_array)
    node = Node.new(root, left_node, right_node)
    return root
  end
end
    





binding-pry