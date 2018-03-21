require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'
require "./lib/linked_list"
require "./lib/jungle_beat"

  class TestNode < Minitest::Test

    def test_a_node_is_born
      node = Node.new("data")
      assert_instance_of Node,node
    end

    def test_tada_a_node_has_data
      node = Node.new("plop")
      assert_equal "plop",node.data
    end

    def test_next_node_returns_nil
      node = Node.new("plop")
      assert_nil node.next_node
    end





end
