# frozen_string_literal: true

# nodes in the linked list object
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node)
    @value = value
    @next_node = next_node
  end
end

next_node= proc
