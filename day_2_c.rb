def traverse_down(node)
  current_node = node
  store = []
  while current_node.right
    store.push(current_node.value)
  end
  if current_node.left?
    current_node = current_node.left
    while current_node.right
      store.push(current_node.value)
      current_node = node.right
    end
    store[-1]
  else
    store[-2]
  end

end


def second_largest_element_in_btree(tree_root)
  if !tree_root.right && !tree_root.left
    "No second largest anything, only one node"
  elsif !tree_root.right && tree_root.left
    traverse_down(tree_root.left)
  else
    traverse_down(tree_root.right)
  end
end
