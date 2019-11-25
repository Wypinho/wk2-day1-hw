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

  def get_rental_details(book_name)
    for book in @books
      return book[:rental_details] if book[:title] == book_name
    end
  end

  def add_book(book_name)
    @books << {title: book_name, rental_details: {student_name: "", date: ""}}
  end

  def change_rental_details(book_name, student_name, date)
    for book in @books
      if book[:title] == book_name
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = date
      end
    end
  end

end
