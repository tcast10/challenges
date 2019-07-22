# To Be Completed:
#
# - Reverse the LinkedList using mutation
# - Read about the Floyd Cycle Detection Problem
# - Build a method to determine if a LinkedList is infinite (not done)

# linkedlistnode class and print_values method provided in lesson
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

# reverse_list (using mutation) method start provided in lesson
def reverse_list2(list, previous=nil)     # expecting recursion
  # do stuff
  if list
    cdr = list.next_node
  #print_values(cdr)         # for testing
    list.next_node = previous     # previous = nil on first pass
    reverse_list2(cdr, list)
  else
    previous
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
#node1.next_node = node3    # makes it infinite loop

puts "original list"
print_values(node3)
puts
puts "reversed/mutated list"
print_values(reverse_list2(node3))