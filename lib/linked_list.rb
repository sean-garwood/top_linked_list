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
    @nodes = 0
  end

  def size
    nodes
  end

  def transformation(type, &subtype)
    type.zero? ? @nodes -= 1 : @nodes += 1
    yield(subtype) # this will yield control to the block passed as subtype,
    # which is going to be a specific transformation function
  end

  def find_node_before(node)
    size.zero? || node == @head && nil
    # find the neighbors of a given node.
    # search for the node that has node.next_node = node
    self.select { |n| n.next_node == node }
  end

  def find_node_after(node)
    return nil if @tail.nil? || @head.nil?

  end



  def make_node(value, transformation)
    t = add_to_list_operation.call(transformation)
    next_node = find_next_node(transformation)
    Node.new(value, next_node)
  end


  def pop
    # some code
  end

  # add node to end of list
  def append(value)
    @tail.next_node =
  end

  # add node to beginning of list
  def prepend(value)
    @nodes.zero?
  end



add_to_list_operation = proc { |subtype| ADD_NODE[subtype] }
remove_from_list_operation = proc { |subtype| REMOVE_NODE[subtype] }
find_next_node = proc { |transformation| }
