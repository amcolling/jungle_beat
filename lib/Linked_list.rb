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

  def count
    if head.nil?
    else
      1
    end
  end

  def to_string
    current_node = @head
    current_node = current_node.next_node
    "doop, #{head.sound}, doop"
  end

  # def last_node(node)
  #   return node if node.nil
  #   last_node(node.next_node)
  # end

  def prepend_to_head(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      current.next_node.nil?
      current = current.next_node
    end
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      until current.next_node.nil?
      current = current.next_node
      end
      current.next_node = Node.new
    end
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
      @head = Node.new(data)
      old_head = @head.next_node
    end
  end

  def insert(index, data)
    count = 0
    current_node = @head
    new_node = Node.new(data)
    until count == index -1
      current_node = current_node.next_node
      count +=1
    end
end
