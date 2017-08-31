class LinkedListNode
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

# another way to do this is to go through and just change dirction of pointers
#try to figure out swapping solution later
def reverse_list(head_node)
  current_node = head_node # a
  current_first = head_node # a
  first_node = true
  while current_node.next != nil
    if first_node == true
      first_node = false
      current_node = current_node.next
      next
    end

    current_first.next = current_node.next
    current_node.next = current_first
    current_first = current_node
    current_node = current_first.next

  end
end


a = LinkedListNode.new('A')
b = LinkedListNode.new('B')
c = LinkedListNode.new('C')
d = LinkedListNode.new('D')
e = LinkedListNode.new('E')


a.next = b
b.next = c
c.next = d
d.next = e

p reverse_list(a)
