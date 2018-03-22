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

  def append(data)
    self.head = Node.new(data)
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

  # def last_node(node)
  #   return node if node.nil
  #   last_node(node.next_node)
  # end

  def prepend_to_head(data)
    node = new_node(data)
    node.next_node = head
    self.head = node
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


end
