require_relative './linked_list'
require_relative './node'
require_relative '../modules/transformations'
require_relative '../modules/node_handler'
include Transformations
include MakeNode
include EraseNode

ll = LinkedList.new
ll.append('sean')
ll.prepend('jody')
puts ll
