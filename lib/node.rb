require 'pry'
class Node
attr_reader :sound,
            :head
attr_accessor :next_node

  def initialize(sound)
    @sound = sound
    @next_node = nil
    @head = nil

  end


  # def next_node(sound)
  #   Node.new(sound)
  # end




end
