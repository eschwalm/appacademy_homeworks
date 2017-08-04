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


class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map.each do |el|
      if el[0] == key
        el[1] = value
        return show
      end
    end
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |el|
      return el if el[0] == key
    end
    nil
  end

  def remove(key)
    @map.each do |el|
      if el[0] == key
        @map.delete(el)
      end
    end
  end

  def show
    @map
  end
end
