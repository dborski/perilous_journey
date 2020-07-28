class LinkedList
  attr_reader :head
  
  def initialize 
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end 

  def whole_list
    elements = []
    current_node = @head
    while current_node.next_node
      elements << current_node
      current_node = current_node.next_node
    end 
    elements << current_node
  end

  def count
    return 0 if !@head
    whole_list.count
  end 

  def to_string
    names = whole_list.map { |node| node.surname }.join("")
    "The #{names} family"
  end 
end 