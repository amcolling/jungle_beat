require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
# require "pry-state'
require './lib/node'
require "./lib/Linked_list"
require "./lib/jungle_beat"

  class TestLinkedList < Minitest::Test
    def test_linked_list_exists
      linked_list = LinkedList.new
      assert_instance_of LinkedList, linked_list
    end
    #
    def test_the_node_has_a_head_and_is_nil
      linked_list = LinkedList.new
      assert_nil linked_list.head
    end

    def test_append_adds_new_node_to_end_of_list
      linked_list = LinkedList.new
      data = linked_list.append('doop')
      assert_instance_of Node, data
      assert_equal 'doop', data
      assert_equal data, linked_list.head
      end

    def test_count
      skip
      linked_list = LinkedList.new
      linked_list.append("doop")
      assert_equal 1, linked_list.count
    end


    def test_to_string
      skip
      linked_list = LinkedList.new
      linked_list.append("doop")
      data = linked_list.to_string
      assert_equal "doop,doop,doop",data
    end

    def test_append_multiple_nodes
      skip
      linked_list = LinkedList.new
      linked_list.append("doop")
      linked_list.append("deep")
      data = linked_list.head.next_node
      assert_equal "deep", data
    end

    def test_last_node_is_the_tail
      skip
      linked_list = LinkedList.new
      linked_list.append("deep")
      data = linked_list.last_node(linked_list.head)
      assert_instance_of Node, data
      assert_equal "deep", data.sound
    end

    def test_empty_true_if_head_is_nil
      skip
      linked_list = LinkedList.new
      assert_equal true, linked_list
    end

    def test_empty_false_when_head_has_data
      skip
      linked_list = LinkedList.new
      linked_list.append("deep")
      assert_equal false, linked_list
    end

    def test_new_node_equals_new_node
      skip
      linked_list = LinkedList.new
      data = linked_list.new_node("deep")
      assert_instance_of Node, data
      assert_equal "deep", data.sound
    end

    def test_prepend_to_head
      skip
      linked_list = LinkedList.new
      linked_list.append("suu")
      linked_list.append("plop")
      linked_list.prepend("dop")
      data = linked_list.to_string
      assert_equal "dop","plop","suu", data
    end
end
