class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
      @value = value
      @next  = nil
  end
end

def kth_to_last_node(k, head_node)
  raise "k has to be positive" if k < 0
  current_node = head_node
  runner = head_node
  k.times do
    runner = runner.next
    raise "List isn't that long" if runner == nil
  end

  while !current_node.next.nil?
    return current_node.value if runner.next == nil
    runner = runner.next
    current_node = current_node.next
  end
  if k == 0
    return current_node.value
  end
end

a = LinkedListNode.new("Angel Food")
b = LinkedListNode.new("Bundt")
c = LinkedListNode.new("Cheese")
d = LinkedListNode.new("Devil's Food")
e = LinkedListNode.new("Eccles")

a.next = b
b.next = c
c.next = d
d.next = e

p kth_to_last_node(0, a)
p kth_to_last_node(1, a)
p kth_to_last_node(2, a)
p kth_to_last_node(3, a)
p kth_to_last_node(4, a)
p kth_to_last_node(5, a)
# returns the node with value "Devil's Food" (the 2nd to last node)
