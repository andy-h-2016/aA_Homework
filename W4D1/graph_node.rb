class GraphNode

  attr_accessor :value, :neighbors

  def initialize(value)
    @value = value
    @neighbors = []
  end

  def self.bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()

    until queue.empty?
      first = queue.shift
      visited.add(first)
      return first if first.value == target_value
      unvisited_neighbors = first.neighbors.select {|neighbor| !visited.include?(neighbor)}
      queue.concat(unvisited_neighbors)
    end
    
    nil
  end

end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p GraphNode.bfs(a, "b")
p GraphNode.bfs(a, "f")
