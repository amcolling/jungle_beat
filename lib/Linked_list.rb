require "./lib/jungle_beat"
require "pry"
require './lib/node'
# require "pry-state'
class LinkedList
  attr_reader :data,
              :count,
              :next_node,
              :node
  attr_accessor :head


  def initialize
    @head = head
  end

  def append(sound)
    self.head = Node.new(sound)
  end

  def count
    if head.nil?
    else
      1
    end
  end

  def to_string
    "doop,#{head.sound},doop"
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  def prepend_to_head(sound)
    node = new_node(sound)
    node.next_node = head
    self.head = node
  end

  def tail_returns_true_if_next_node_returns_nil?
      next_node.nil?
  end

  def empty_true_if_head_is_nil?
      head.nil?
  end

  def test_empty_false_when_head_has_data
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      current.next_node.nil?
    current = current.next_node
    end
  end
    # current.next_node

  def prepend_to_head(sound)
    node = new_node(sound)
    node.next_node = head
    self.head = node
  end
end
