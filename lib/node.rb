class Node
attr_reader :sound,
            :next_node
            :head


  def initialize(sound)
    @sound = sound
    @next_node = nil
    @head = next_node
  end
end
