# frozen_string_literal: true

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

  TRANSFORMATIONS = [
    0 => :append,
    1 => :prepend,
    2 => :pop,
    3 => :insert_at,
    4 => :remove_at
]

  def initialize
    @head = nil
    @tail = nil
    @nodes = []
  end

  def make_node(value, type)
    Node.new(value, get_next(send(TRANSFORMATIONS[type])))
  end

  def erase_node(index, type)
    case
    when type == 2
      at(index - 1)




  def get_next(type, index = 0)
    case
    when type.zero?
      nil
    when t == 1
      at(0)
    when t == 3
      # get the index to insert at.
      find(at(index+1))
    when t == 4
      find(at(index-1))
    end
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
