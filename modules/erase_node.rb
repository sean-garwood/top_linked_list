# frozen_string_literal: true

# Removing a node from a linked list.
module EraseNode
  def erase_node(index, type)
    type == 3 && @tail.next_node = nil
    # when type == 4
  end
end
