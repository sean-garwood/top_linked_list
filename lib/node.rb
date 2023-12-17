# frozen_string_literal: true

# nodes in the linked list object
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, &next_node)
    @value = value
    block_given? && @next_node = next_node.call || @next_node = nil
  end
end
