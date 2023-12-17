# procedure
1. initialize the LinkedList object.
  - defaults to empty, so @head and @tail are both nil.
2. modify the LinkedList object by adding or removing a node at a specific
   position.
  - Can add or remove nodes
    - add: append, prepend, insert_at
    - remove: pop, delete_at

when ll has exactly one node, @head = tail
when ll has two or more nodes: @head is the first node, @tail is last

# objects

## linked list

### attributes

1. head
  - first node in the list
2. tail
  - last node in the list

  ```ruby
  @tail.next_node.nil? # always true
  ```

### node

### attributes

1. value <!--given-->
2. next_node
  - this is the tricky part. This is dynamic based on the type of transformation
    that is being applied.

# pseudocode

## necessary tasks

1. modify the @next_node attrib of the node(s) that neighbor the
newly added/deleted node.
2. modify the @next_node attrib of the node that is being
added to the ll.
3. find
3. modify @head and @tail


make node(value)
  node = Node.new(value)
  node.next_node = find_next_node(node)
  node

find_next_node(node)
  if append then nil
  if prepend then @head
  if pop then
    check if @tail
    check if @tail - 1 exists
      set @tail - 1.next_node = nil
      set @tail = @tail - 1
    return popped node

transformation_type

data struct = linked list
  elements = nodes
  nodes = (value, next_node)
