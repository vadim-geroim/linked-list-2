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

def reverse_list(list, previous=nil)
  head = list.next_node
  list.next_node = previous
  if head
    reverse_list(head, list)
  else
    list
  end
end

def is_infinite?(list)
  step_with_one_node = list.next_node
  step_with_two_nodes = list.next_node

  until step_with_two_nodes.nil?
    step_with_two_nodes = step_with_two_nodes.next_node

    return false if step_with_two_nodes.nil?

    step_with_two_nodes = step_with_two_nodes.next_node
    step_with_one_node = step_with_one_node.next_node

    return true if step_with_two_nodes == step_with_one_node
  end
  return false
end

def list_to_array(list, array)
  if list
    array << "#{list.value} --> "
    list_to_array(list.next_node, array)
  else
   array << "nil"
  end
  return array
end
