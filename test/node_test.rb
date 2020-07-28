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
end 