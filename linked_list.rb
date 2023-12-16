# frozen_string_literal: true

# nodes in the linked list object
class Node
  attr_accessor :next, :data

  def initialize(data = nil)
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
  include Enumerable
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def each
    for node in self
      yield node
    end
    self
  end

  def append(value)
    @head = value if @head.nil?
    @tail = value
  end

  def prepend(value)
    @tail = value if @head.nil?
    @head = value
  end

  def size
    self.count
  end

  # #head and #tail methods covered by attr_accessor

  def at(index)
    self[index]
  end

  def pop
    # something
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
