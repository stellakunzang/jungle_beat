require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/linked_list.rb"

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_it_has_attributes
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next
  end

  def test_count
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_multiple_appendages
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal Node, list.head.next.class
    assert_equal 2, list.count
    assert_equal "doop deep", list.to_string
  end

end
