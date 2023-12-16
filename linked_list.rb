# frozen_string_literal: true

# nodes in the linked list object
class Node
  attr_accessor :next, :data

  # Each node consists of exactly two elements: data, and 'next', which is a
  # link to the next node in the list.

  # Also, there are two attributes common to all linked lists: they start with a
  # HEAD node and end with a TAIL node and nil output
  def initialize(data)
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
  include Enumerable
  # A linked list consists of three sections: the head, an arbitrary number of
  # nodes from zero to memory bound, and tail.

  # Every list has to have a head and a tail, but not every list needs nodes.

  # the head is the first element in the list

  # the tail is the last element in the list
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      value.next = @head
      @head = value
    end
  end

  def prepend(value)
    @head.nil? && @head = value || @tail.next = value
    @tail = value
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

  def contains?(value)
    # something
  end

  def find(value)
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
