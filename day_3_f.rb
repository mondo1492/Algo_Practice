class LinkedListNode
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end


def list_cycle?(head_node)
  node_hash = Hash.new
  current_node = head_node
  loop do
    return true if node_hash.key?(current_node)
    return false if current_node.next == nil
    node_hash[current_node] = true
    current_node = current_node.next
  end
end

def list_cycle_2?(head_node)
  current_node = head_node
  runner = head_node
  first = true
  loop do
    return true if current_node == runner && !first
    return false if current_node.next == nil || runner.next == nil || runner.next.next == nil
    current_node = current_node.next
    runner = runner.next.next
    first = false if first == true
  end
end

a = LinkedListNode.new(1)
b = LinkedListNode.new(2)
c = LinkedListNode.new(3)
d = LinkedListNode.new(4)
e = LinkedListNode.new(5)

a.next = b
b.next = c
c.next = d
d.next = e
# e.next = a

p list_cycle?(a)
p list_cycle_2?(a)
