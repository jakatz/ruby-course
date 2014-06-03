
class Book
  attr_reader :title, :author
  attr_accessor :id, :status

  def initialize(title, author)
    @title = title
    @author = author
    @status = "available"
  end

  def check_out
    if @status == "available"
      return @status = "checked_out"
    else
      return false
    end
  end

  def check_in
    if @status == "available"
      return false
    else
      @status = "available"
    end
  end
end

class Borrower
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Library
  attr_reader :name

  def initialize(name)
    @books = []
  end

  def register_new_book(title, author)
  end

  def books
  end

  def add_book(title, author)
  end

  def check_out_book(book_id, borrower)
  end

  def check_in_book(book)
  end

  def available_books
  end

  def borrowed_books
  end
end
