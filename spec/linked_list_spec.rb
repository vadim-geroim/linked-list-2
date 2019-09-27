require 'spec_helper'

RSpec.describe LinkedListNode, type: :model do
  describe 'Liked List: Data Structure' do
    it 'should validate reverse the LinkedList using mutation' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      reversed_list = reverse_list(node3)
      reversed_list_string = list_to_array(reversed_list, []).join('')
      expect(reversed_list_string).to eq  "37 --> 99 --> 12 --> nil"
      expect(reversed_list.value).to eq(37)
    end

    it 'should validate if a LinkedList is infinite' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      expect(is_infinite?(node3)).to be false
    end

    it 'should validate if a LinkedList is not infinite' do
      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      node1.next_node = node3
      expect(is_infinite?(node3)).to be true
    end
  end
end