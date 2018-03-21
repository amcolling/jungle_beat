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
end
