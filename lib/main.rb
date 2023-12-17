require 'pry-byebug'
require_relative 'linked_list'
require_relative 'node'

def debug
  ll = LinkedList.new
  ll.append('finish top')
  binding.pry
  ll.append('study fn/oop paradigms')
  binding.pry
  ll.append('study haskell and golang')
  binding.pry
  puts ll
end


debug
