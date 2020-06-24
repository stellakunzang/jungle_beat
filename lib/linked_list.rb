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
      node.next = Node.new(beat)
    end
  end

  def links
    links = []
    node = @head
    while node.next != nil
      links << node
      node = node.next
    end
    links << node
  end

  def count
    links.length
  end

  def to_string
    links.map do |node|
      node.data.to_s
    end.join(" ")
  end

  def prepend(beat)
    node = Node.new(beat)
    node.next = @head
    @head = node
  end

  def insert(index, beat)
    next_node = links[index]
    node = Node.new(beat, next_node)
    if index != 0
      before_node = links[(index - 1)]
      before_node.next = node
    end
  end

  def find(index, length)
    found = [links[index].data]
    new_index = index + 1
    while new_index != index + length
      found << links[new_index].data
      new_index += 1
    end
    found.join(" ")
  end

  def pop
    pop_node = links[-1]
    last_node = links[-2]
    last_node.next = nil
    pop_node.data
  end

  def includes?(beat)
    self.to_string.include?(beat)
  end
end
