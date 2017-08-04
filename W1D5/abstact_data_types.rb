class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack.unshift(el)
  end

  def remove
    @stack.shift
  end

  def show
    @stack
  end
end

class Queue
  def initialize
    @queue = []
  end

  def add(el)
    @queue.unshift(el)
  end

  def remove
    @queue.pop
  end

  def show
    @queue
  end
end
