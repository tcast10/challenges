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


class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
      if @data
        top_value = data.value
        @data = @data.next_node
        top_value
      else
        nil
      end
    end

  def empty?
    @data.nil?
  end

end


def reverse_list(list)
    # ADD CODE HERE

    while list
        # ADD CODE HERE
        reversed_list = LinkedListNode.new(list.value, reversed_list)
        list = list.next_node
    end
    reversed_list
    # ADD CODE HERE
end


def reverse_list_stack(list)
  holder_stack = Stack.new

  while list
    holder_stack.push(list.value)
    list = list.next_node
  end

  prev_node = head = LinkedListNode.new(holder_stack.pop)
  return nil if prev_node.nil?
  until holder_stack.empty?
    cur_node = LinkedListNode.new(holder_stack.pop)
    prev_node.next_node = cur_node
    prev_node = cur_node
  end

  head
end


# Creates a new Stack object
stack = Stack.new

# Pushes (adds) the number 1 to the empty stack
stack.push(1)

# Pushes the number 2 to the TOP of the stack
stack.push(2)

# Pops (removes) the TOP number from the stack (2)
puts stack.pop
# => 2

# Pops the remaining number from the stack (1)
puts stack.pop
# => 1

# Tries to pop the TOP number from the stack,
# but it is empty so it returns nil
puts stack.pop
# => nil


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

node4 = LinkedListNode.new(39)
node5 = LinkedListNode.new(63, node4)
node6 = LinkedListNode.new(92, node5)
node7 = LinkedListNode.new(391, node6)
node8 = LinkedListNode.new(6.901, node7)

puts "linked list"
puts print_values(node3)
puts "------"

puts "reversed list"
print_values(reverse_list(node3))
print_values(reverse_list_stack(node3))
puts




puts "linked list"
puts print_values(node8)
puts "------"

puts "reversed list"
print_values(reverse_list(node8))
print_values(reverse_list_stack(node8))
puts