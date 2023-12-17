# frozen_string_literal: true

require_relative 'node'

# Ruby impl of a linked list.
class LinkedList
attr_accessor :head, :tail

TRANSFORMATIONS = [[:pop, :remove_at], [:append, :prepend, :insert_at]]
ADD_TO_LIST = TRANSFORMATIONS[1]
REMOVE_FROM_LIST = TRANSFORMATIONS[0]

  def initialize
    @head = nil
    @tail = nil
  end

  def make_node(value, type)
    Node.new(value, transformation.call(type))
  end

  def transform(value, &type)
    case
    when type == :append
  end


transformation = proc { |type, subtype| TRANSFORMATIONS[type][subtype] }
