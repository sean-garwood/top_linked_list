# frozen_string_literal: true

# nodes in the linked list object
class Node
  attr_accessor :next, :data

  # Each node consists of exactly two elements: data, and 'next', which is a
  # link to the next node in the list.

  # Also, there are two attributes common to all linked lists: they start with a
  # HEAD node and end with a TAIL node and nil output
  def initialize(data = nil)
    @data = data
    @next = nil
  end

  def value
    @data.nil? && nil || @data
  end

  def next_node
    @next.nil? && nil || @next
  end
end

# Ruby impl of a linked list.
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    @head, @tail = value if @head.nil?
    @tail = value
  end

  def prepend(value)

  end

  def size
    # something
  end

  # #head and #tail methods covered by attr_accessor

  def at(index)
    # something
  end

  def pop
    # something
  end

  def find(value)
    # something
  end

  def contains?(value)
    # something
  end
end

  # def to_s
    # something
  # end

=begin
extracredit

  def insert_at(value, index)
    # something
  end

  def remove_at(index)
    # something
  end

=end
