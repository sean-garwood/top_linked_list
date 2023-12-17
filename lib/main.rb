require 'pry-byebug'
require_relative 'linked_list'
require_relative 'node'

def debug
  ll = LinkedList.new
  ll.append('finish top')
  ll.append('study fn/oop paradigms')
  ll.append('study haskell and golang')
  puts ll
end

debug
binding.pry
