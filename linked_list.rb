# frozen_string_literal: true

require 'pry-byebug'
# nodes in the linked list object
class Node
  attr_accessor :next, :data

  def initialize(data = nil, next = nil)
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
    @nodes = []
  end

  def append(value)
    size.zero? && @head = value
    @tail = value
    @nodes << value
  end

  def prepend(value)
    size.zero? && @tail = value
    @head = value
    @nodes << value
  end

  def size
    @nodes.count
  end

  # #head and #tail methods covered by attr_accessor

  def at(index)
    @nodes[index]
  end

  def pop
    self
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

foo = LinkedList.new
binding.pry
exit
