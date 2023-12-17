module Transformations
  # add nodes
  def append(value)
    node = make_node(value, 0)
    size.zero? && @head = node
    @tail = node
    node.next_node = nil
    @nodes << node
  end

  def prepend(node)
    node = make_node(node, 1)
    size.zero? && @tail = node
    @head = node
    @nodes.unshift(value)
  end

  # def insert_at(value, index)
    # extra credit
  # end

  # remove nodes
  def pop
    @nodes[-2].next_node = nil
    @nodes.shift
  end

  # def remove_at(index)
    # extra credit
  # end
