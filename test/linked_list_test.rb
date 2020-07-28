require_relative 'test_helper'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_node_head_is_nil_by_default
    assert_nil @list.head
  end

  def test_append_list
    @list.append("West")

    assert_instance_of Node, @list.head
    assert_nil @list.head.next_node
  end

  def test_linked_list_in_array
    @list.append("West")

    assert_instance_of Node, @list.whole_list.first
  end 

  def test_count_nodes
    assert_equal 0, @list.count
    
    @list.append("West")
    assert_equal 1, @list.count
  end

  def test_to_string
    @list.append("West")

    assert_equal "The West family", @list.to_string
  end
end 