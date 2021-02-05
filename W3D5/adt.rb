#Exercise 1
class Stack
  def initialize(*args)
    @stack = [*args]
  end

  def push(el)
    @stack.push(el)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack[-1]
  end

end


class Queue

  def initialize(*args)
    @queue = [*args]
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue[0]
  end
end

class Map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each.with_index do |pair, i| 
      if pair[0] == key
        @map[i][1] = value
        return
      end
    end
    @map << [key, value]
  end

  def get(key)
    @map.each {|pair| return pair if pair[0] == key}
    nil
  end

  def delete(key)
    @map.delete_if {|pair| pair[0] == key}
  end

  def show
    p @map
  end

end
