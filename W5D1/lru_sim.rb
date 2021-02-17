

class LinkedList
  def self.create_head_tail
    head = self.new(:head)
    tail = self.new(:tail, head)
    head.next_node = tail
    [head,tail]
  end

  def self.show(node)
    #print values of linked list starting from the current node
    values = []
    until node.next_node.nil?
      values << node.value
      node = node.next_node
    end
    values.delete(:head)
    p values
  end

  def self.insert(value, node_before)
    node_after = node_before.next_node
    nth_node = self.new(value, node_before, node_after)
    node_before.next_node = nth_node
    node_after.prev_node = nth_node
    nth_node
  end

  def self.index(node, target)
    #node should always be the head
    until node.next_node.nil?
      # p node.value
      return node if node.value == target
      node = node.next_node
    end
    nil
  end

  
  attr_accessor :next_node, :prev_node, :value
  def initialize(value, prev_node = nil, next_node = nil)
    @next_node = next_node
    @prev_node = prev_node
    @value = value
  end

  def delete
    prev_node.next_node = self.next_node
    next_node.prev_node = self.prev_node
  end

  

  
end

def lru_sim(cache_size, data_sets)
  cache = {}
  head, tail = LinkedList.create_head_tail
  #head --> most recently used. tail --> least recently used.
  data_sets.each_char do |char|
    if char == "!"
      LinkedList.show(head)
    else
      existing_node = LinkedList.index(head, char)
      if existing_node.nil? #if node is not included
        new_node = LinkedList.insert(char, head)
      else
        #if node containing value already exists
        existing_node.delete
        new_node = LinkedList.insert(char, head)
      end

      cache[char] = new_node
      
      tail.prev_node.delete if cache.length > cache_size

    end
  
  end
  #each upcase letter represents 
end

head, tail = LinkedList.create_head_tail
# p head
# p tail
first = LinkedList.insert(:first, head)

second = LinkedList.insert(:second, first)
# first.next_node = second

third = LinkedList.insert(:third, second)
# second.next_node = second

# p LinkedList.index(head, :third)
# first.delete
# p LinkedList.index(head, :third)

# lru_sim(5, "ABC!DEAF!B!")
lru_sim(3, "WXWYZ!YZWYX!XXXY!")