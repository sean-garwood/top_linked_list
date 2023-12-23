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
    if @size.zero?
      @head = node
    elsif @size == 1
      @head.next_node = node
    else
      @tail.next_node = node
    end
    @size += 1
    @tail = node
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = @head unless @head.nil?
    @head = node
    @size += 1
    size == 1 & @tail = @head
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
    results = nodes.select { |node| node.value == value }
    results.empty? && nil || results.length == 1 && results[0] || results
  end

  def to_s
    print_linked_node = ->(value) { "( #{value} ) -> " }
    current_node = @head
    return '' if current_node.nil?

    while current_node != @tail
      # would be cleaner to refactor this call to print / lambda outside in its
      # own method
      print print_linked_node.call(current_node.value)
      current_node = current_node.next_node
    end
    " ( #{@tail.value} )"
  end
end

def debug()
  ll = LinkedList.new
  ll.append('finish top')
  ll.append('study fn/oop paradigms')
  ll.append('study haskell and golang')
  puts ll
end

debug
