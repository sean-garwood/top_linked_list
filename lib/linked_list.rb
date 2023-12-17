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
    yield(subtype)
  end

  def make_node(value, transformation)
    @nodes += 1
    t = add_to_list_operation.call(transformation)
    Node.new(value, t)
  end


  def pop
    # some code
  end

  def append(value)
    @head.nil?
    # add node to end of list
  end

  def prepend(value)
    # add a node to the beginning of list
  end



add_to_list_operation = proc { |subtype| ADD_NODE[subtype] }
remove_from_list_operation = proc { |subtype| REMOVE_NODE[subtype] }
