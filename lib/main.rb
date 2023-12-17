require_relative './linked_list'
require_relative './node'
require_relative './modules/transformations'
require_relative '../modules/node_handler'

TRANSFORMATIONS = {
  0 => :append,
  1 => :prepend,
  2 => :insert_at,
  3 => :pop,
  4 => :remove_at
}
