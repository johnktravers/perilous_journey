class Node
  attr_reader :surname, :next_node

  def initialize(surname)
    @surname = surname
    @next_node = nil
  end

  def set_next_node(surname)
    @next_node = Node.new(surname)
  end
end
