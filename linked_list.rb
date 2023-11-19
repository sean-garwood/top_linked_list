# frozen_string_literal: true

# nodes in the linked list object
class Node
  attr_accessor :next, :data

  # Each node consists of exactly two elements: data, and 'next', which is a
  # link to the next node in the list.
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

  # A linked list consists of three sections: the head, an arbitrary number of
  # nodes from zero to memory bound, and tail.

  # Every list has to have a head and a tail, but not every list needs nodes.

  # the head is the first element in the list

  # the tail is the last element in the list

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
end
