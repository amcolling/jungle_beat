class Node
attr_reader :sound,
            :head,
            :tail,
            :empty


attr_accessor :next_node

  def initialize(sound)
    @sound = sound
    @next_node = nil
    @head = nil
    @tail = tail
    @empty = empty
  end

  def new_node(sound)
    Node.new(sound)
  end




end
