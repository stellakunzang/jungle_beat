require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/jungle_beat.rb"

class JungleBeatTest < Minitest::Test
  def test_it_exists
    jb = JugleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_it_has_attributes
    jb = JugleBeat.new
    assert_equal LinkedList, jb.list.class
    assert_nil jb.list.head
  end

  def test_append
  end

  def test_count
  end 
end
