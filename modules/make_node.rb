# frozen_string_literal: true

# converting a given value into a node for a linked list.
module MakeNode
  TRANSFORMATIONS = {
    0 => :append,
    1 => :prepend,
    2 => :insert_at,
    3 => :pop,
    4 => :remove_at
  }

  def make_node(value, type)
    if type.zero?
      Node.new(value)
    else type == 1
      Node.new(value, @head)
    # when type == 2
    end
  end
end
