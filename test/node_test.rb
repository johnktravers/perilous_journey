require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < MiniTest::Test
  def setup
    @node = Node.new('Burke')
  end

  def test_initialize
    assert_instance_of Node, @node
    assert_equal 'Burke', @node.surname
  end

  def test_next_node_starts_with_nil
    assert_nil @node.next_node
  end

  def test_set_next_node
    next_node = @node.set_next_node('Hardy')

    assert_instance_of Node, @node.next_node
    assert_equal 'Hardy', next_node.surname
  end
end
