# frozen_string_literal: true

# Ruby impl of a linked list.
class LinkedList
  include Transformations
  include MakeNode
  include EraseNode

  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def size
    # no cheating by using @nodes!
  end

  def at(index)
    # no cheating by using @nodes!
  end

  def find(value)
    # no cheating by using @nodes!
    @nodes.select { |node| node.value == value }
  end

  def contains?(value)
    # no cheating by using @nodes!
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
