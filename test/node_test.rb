require_relative 'test_helper'
require './lib/node'

class NodeTest < Minitest::Test

  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_readable_attributes
    assert_equal "Burke", @node.surname
  end

  def test_next_node_is_nil_by_default
    assert_nil @node.next_node
  end 
end 