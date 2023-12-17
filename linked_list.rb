# frozen_string_literal: true

# Ruby impl of a linked list.
class LinkedList
require_relative '../modules/node_handler'
  attr_accessor :head, :tail

  def initia
    @head = nil
    @tail = nil
    @nodes = []
  end

  def append(value)
    size.zero? && @head = make_node.call(value, 0)
    @tail = value
    value.next_node = nil
    @nodes << value
  end

  def prepend(value)
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
    @nodes.shift
  end

  def find(value)
    @nodes.select { |node| node.value == value }
  end

  def contains?(value)
    @nodes.include?(value)
  end

  def insert_at(value, index)

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
