require('minitest/autorun')
require('minitest/reporters')
require_relative('../library')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test

  def test_get_books()
    books = Library.new()
    assert_equal(2, books.get_books.length())
  end

  def test_find_book()
    books = Library.new()
    book = books.find_book("the_big_sleep")
    assert_equal({title: "the_big_sleep", rental_details: {student_name: "Dave", date: "15/09/18"}}, book)
  end

  def test_get_rental_details()
    books = Library.new()
    assert_equal({student_name: "Dave", date: "15/09/18"}, books.get_rental_details("the_big_sleep"))
  end

  def test_add_book()
    books = Library.new()
    assert_equal(3, books.add_book("war_and_peace").length())
  end

end
