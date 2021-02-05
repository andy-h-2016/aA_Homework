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

