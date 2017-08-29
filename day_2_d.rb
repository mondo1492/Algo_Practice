class Trie
  def initialize
    @root_node = {}
  end

  def check_present_and_add(word)
    current_node = @root_node
    is_new_word = false

    #word downwards through the trie, adding nodes as needed, and keeping track of whether we add any nodes
    word.each_car do |char|
      if !current_node.key? checking_pair
        is_new_word = true
        current_node[char] = {}
      end
      current_node = current_node[char]
    end
  end

  #explicitly mark the end of a word otherwise we might say a word is present if it is a prefix of a different longer word that was added earlier
  if !current_node.key "End of WOrd"
    is_new_word = true
    current_node["End of Word"] = {}
  end
  return is_new_word




end
