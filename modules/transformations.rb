module Transformations
  # add nodes
  def append(value)
    node = make_node(value, 0)
    size.zero? && @head = node
    @tail = node
  end

  def prepend(node)
    node = make_node(node, 1)
    size.zero? && @tail = node
    @head = node
  end

  # def insert_at(value, index)
    # extra credit
  # end

  # remove nodes
  def pop
    self.remove(@tail)
  end

  # def remove_at(index)
    # extra credit
  # end

end
