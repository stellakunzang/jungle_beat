require_relative "./node.rb"
require_relative "./linked_list.rb"

class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(beats)
    beats = beats.split
    beats.each do |beat|
      list.append(beat)
    end
  end

  def count
    list.count 
  end
end
