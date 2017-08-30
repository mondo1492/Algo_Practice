class Stack

  # initialize an empty array
  def initialize
    @items = []
    @max = []
  end

  # push a new item to the last index
  def push(item)
    @items.push(item)
    if @max.empty? || item > @max.last
      @max.push(item)
    else
      @max.push(@max.last)
    end
  end

  # remove the last item
  def pop()
    # if the stack is empty, return nil
    # (it would also be reasonable to throw an exception)
    if @items.empty?
      return nil
    end
    @max.pop()
    @items.pop()
  end

  # see what the last item is
  def peek()
    if @items.empty?
      return nil
    end
    @items[-1]
  end

  def max
    @max.last
  end
end

stack = Stack.new
p stack.push(80)
p stack.push(70)
p stack.push(60)
p stack.push(50)
p stack.push(90)
p stack.push(100)
p stack.max
p stack.pop
p stack.max
p stack.pop
p stack.max
p stack.pop
p stack.max
p stack.pop
p stack.max
p stack.pop
p stack.pop
p stack.pop
