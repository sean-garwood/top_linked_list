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
    @nodes.remove_at[-1]
  end

  def find(value)
    @nodes.index_at(value)
  end

  def contains?(value)
    @nodes.include?(value)
  end

  def to_s
    if size.zero?
      return nil
    elsif @nodes.count == 1
      return "( #{@nodes[0].value} )"
    else
      @nodes.each { |node| "( #{node.value} ) -> " unless i + 1 == size }
    end
    " #{@tail.value}"
  end
end
