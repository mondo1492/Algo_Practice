def is_valid_binary_tree(tree_root)
  nodes = []
  nodes.push([tree_root, -Float::INFINITY, Float::INFINITY])

  while !nodes.empty?
    node, min, max = nodes.shift
    if node.value <= min || node.value >= max
      return false
    end

    nodes.push([node.left, min, node.val]) if node.left
    nodes.push([node.right, node.val, max]) if node.right
  end
  true
end
