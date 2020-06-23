require_relative "./node.rb"

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(beat)
    if @head == nil
      @head = Node.new(beat)
    else
      node = @head
      while node.next != nil
        node = node.next
      end
      @head.next = Node.new(beat)
    end
  end

  def list
    list = []
    node = @head
    while node.next != nil
      list << node
      node = node.next
    end
    list << node
  end

  def count
    list.length
  end

  def to_string
    list.map do |node|
      node.data.to_s
    end.join(" ")
  end

  def prepend(beat)
    node = Node.new(beat)
    node.next = @head
    @head = node
  end

  def insert(index, beat)
    next_node = list[index]
    node = Node.new(beat, next_node)
    if index != 0
      before_node = list[(index - 1)]
      before_node.next = node
    end 
  end
end
