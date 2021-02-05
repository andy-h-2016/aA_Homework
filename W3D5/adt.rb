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
