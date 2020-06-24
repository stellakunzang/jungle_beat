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

  def test_prepend
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

  def test_insert
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_find
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_pop
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "blop", list.pop
    assert_equal "shu", list.pop
    assert_equal "deep woo shi", list.to_string
  end

  def test_includes
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal true, list.includes?("deep")
    assert_equal false, list.includes?("dep")
  end

end
