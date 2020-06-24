require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/jungle_beat.rb"

class JungleBeatTest < Minitest::Test
  def test_it_exists
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_it_has_attributes
    jb = JungleBeat.new
    assert_equal LinkedList, jb.list.class
    assert_nil jb.list.head
  end

  def test_append
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next.data
  end

  def test_count
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end
end
