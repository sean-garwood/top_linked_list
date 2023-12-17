# frozen_string_literal: true

require_relative 'node'

# Ruby impl of a linked list.
class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    node = Node.new(value)
    @size.zero? && @head = node || @tail.next_node = node
    @tail = node
    @size += 1
    self
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = @head unless @head.nil?
    @head = node
    @size += 1
    self
  end

  def at(index)
    # index is the depth of the search for the node to return.
    # start with the @head and store it into `current_node`
    current_node = @head
    index.times { current_node = current_node.next_node }
    current_node
  end

  def pop
    return if @size.zero?

    if @size == 1
      @head = nil
      @tail = nil
    elsif size == 2
      @head.next_node = nil
      @tail = nil
    else # if size is greater than two
      # set the @tail to be the second-to-last node
      @tail = at(size - 2)
      @tail.next_node = nil
    end
    @size -= 1
  end

  def collect_nodes
    nodes = []
    current_node = @head
    until current_node.nil?
      nodes << current_node
      current_node = current_node.next_node
    end
    nodes
  end

  def contains?(value)
    nodes = collect_nodes
    nodes.any? { |node| node.value == value }
  end

  def find(value)
    nodes = collect_nodes
    nodes.select { |node| match?.call(value) }
  end
end
