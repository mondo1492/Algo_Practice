class Stack
  def initialize
    @stack = []
  end

  def push(item)
    @stack.push(item)
  end

  def pop
    @stack.pop
  end

end


class Queue
  def initialize
    @stack1 = []
    @stack2 = []
  end

  def enqueue(item)
    @stack1.push(item)
    item
  end

  def dequeue
    if @stack2.empty?
      until @stack1.empty?
        @stack2.push(@stack1.pop)
      end
    end
    @stack2.pop
  end
end

q = Queue.new
p q.enqueue(1)
p q.enqueue(2)
p q.enqueue(3)
p q.enqueue(4)
p q.enqueue(5)
p q.dequeue
p q.dequeue
p q.dequeue
p q.dequeue
p q.dequeue
