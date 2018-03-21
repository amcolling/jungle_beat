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
