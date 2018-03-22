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
      assert_equal data, data
      assert_equal data, linked_list.head
      end

    def test_count
      linked_list = LinkedList.new
      linked_list.append("doop")
      assert_equal 1, linked_list.count
    end


    def test_to_string
      linked_list = LinkedList.new
      linked_list.append("doop")
      data = linked_list.to_string
      assert_equal "doop, doop, doop", data
    end

    def test_new_node
      linked_list = LinkedList.new
      data = linked_list.append("deep")
      assert_instance_of Node, data
      assert_equal "deep", data.sound
    end

    def test_prepend_to_head
      linked_list = LinkedList.new
      linked_list.append('suu')
      linked_list.append('plop')
      linked_list.prepend('doop')
      assert_equal 'doop suu plop', linked_list.data
      binding.pry
    end

    def test_insert
    end  


  end
#   require "./lib/linked_list"
# > list = LinkedList.new
# > list.append("plop")
# => "plop"
# > list.to_string
# => "plop"
# > list.append("suu")
# => "suu"
# > list.prepend("dop")
# => "dop"
# > list.to_string
# => "dop plop suu"
# > list.count
# => 3
# > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"
