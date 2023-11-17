# frozen_string_literal: true

# nodes in the linked list object
class Node
  attr_accessor :next, :data

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
