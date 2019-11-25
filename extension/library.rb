class Library
  def initialize()
    @books = [
      {
        title: "lord_of_the_rings",
        rental_details:
        {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "the_big_sleep",
        rental_details:
        {
          student_name: "Dave",
          date: "15/09/18"
        }
      }
    ]
  end

  def get_books()
    return @books
  end

  def find_book(book_name)
    for book in @books
      return book if book[:title] == book_name
    end
  end

end
