class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next  = nil
  end


end

def delete_node(node)
  next_val = node.next.value
  next_next_node = node.next.next
  node.value = next_val
  node.next = next_next_node
end

a = LinkedListNode.new('A')
b = LinkedListNode.new('B')
c = LinkedListNode.new('C')

a.next = b
b.next = c

delete_node(b)

p a.next
p a.value
p b.next
p b.value
p c.next
p c.value
