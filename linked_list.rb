# frozen_string_literal: true

require 'pry-byebug'

# nodes in the linked list object
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
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
    value.next_node = nil
    @nodes << value
  end

  def prepend(value)
    @value = Node.new(value, @nodes[0])
    size.zero? && @tail = value
    @head = value
    value.next_node = @nodes[0]
    @nodes.unshift(value)
  end

  def size
    @nodes.count
  end

  # #head and #tail methods covered by attr_accessor

  def at(index)
    @nodes[index]
  end

  def pop
    @nodes[-2].next_node = nil
    self.remove_at[-1]
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

def build_list

  puts 'enter some data for the node' = LinkedList.new
  binding.pry
  exit
