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

  def test_play
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, jb.count
    assert_equal 6, jb.list.count
    jb.play
  end

  def test_initialize_with_syllable
    jb = JungleBeat.new("deep")
    assert_equal 1, jb.count
  end

  def test_all
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    assert_equal "deep doo ditt woo hoo shu", jb.all
  end

  def test_prepend
    jb = JungleBeat.new("deep")
    jb.prepend("tee tee tee Mississippi")
    assert_equal "tee tee tee deep", jb.all
  end

  def test_validation
    jb = JungleBeat.new
    jb.append("Mississippi")
    assert_equal 0, jb.all
  end

  def test_reset_voice
    jb = JungleBeat.new
    jb.voice = "Alice"
    assert_equal "Alice", jb.voice
    jb.reset_voice
    assert_equal "Fiona", jb.voice
  end

  def test_reset_rate
    jb = JungleBeat.new
    jb.rate = 100
    assert_equal 100, jb.rate
    jb.reset_rate
    assert_equal 500, jb.rate
  end
end
