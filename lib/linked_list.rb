# frozen_string_literal: true

# Ruby impl of a linked list.
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @nodes = []
  end

  def size
    @nodes.count
  end

  def at(index)
    @nodes[index]
  end

  def find(value)
    @nodes.select { |node| node.value == value }
  end

  def contains?(value)
    @nodes.include?(value)
  end

  def to_s
    if size.zero?
      return nil
    elsif size == 1
      return "( #{@nodes[0].value} )"
    else
      @nodes.each { |node| "( #{node.value} ) -> " unless node == @tail }
    end

    " #{@tail.value}"
  end
end
