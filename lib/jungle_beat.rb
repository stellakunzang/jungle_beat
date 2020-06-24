require_relative "./node.rb"
require_relative "./linked_list.rb"

class JungleBeat

  attr_reader :list
  attr_accessor :voice, :rate

  def initialize(beat = nil)
    @list = LinkedList.new
    @valid_beats = "tee dee deep bob boop la na ditt woo hoo shu doo bang dang clang hey ho hoo moo boo"
    if beat != nil
      @list.append(beat)
    end
    @voice = "Fiona"
    @rate = 500
  end

  def append(beats)
    beats = beats.split
    beats.each do |beat|
      if valid?(beat)
        list.append(beat)
      end
    end
  end

  def prepend(beats)
    beats = beats.split
    beats.each do |beat|
      if valid?(beat)
        list.prepend(beat)
      end
    end
  end

  def count
    list.count
  end

  def valid?(beat)
    @valid_beats.include?(beat)
  end

  def play
    beats = list.to_string
    "say -r #{@rate.to_s} -v #{@voice} #{beats}"
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Fiona"
  end

  def all
    return 0 if list.head.nil?
    list.to_string
  end
end
