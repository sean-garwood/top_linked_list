# frozen_string_literal: true

require_relative 'node'

# Ruby impl of a linked list.
class LinkedList
attr_accessor :head, :tail, :nodes

TRANSFORMATIONS = [[:pop, :remove_at], [:append, :prepend, :insert_at]]
ADD_NODE = TRANSFORMATIONS[1]
REMOVE_NODE = TRANSFORMATIONS[0]

  def initialize
    @head = nil
    @tail = nil
    @number_of_nodes = 0
  end

  def size
    @number_of_nodes
  end

  def append(value)
    node = Node.new(value)
    size.zero? && @head = node || @tail.next_node = node
    @tail = node
    self
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = @head unless @head.nil?
    @head = node
    self
  end

  def pop
    # some code
  end

  def append(value)
    # add node to end of list
  end

  def prepend(value)
  # add node to beginning of list
  end
end
