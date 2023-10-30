class Rental
  attr_accessor date

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
  end

  def add_person(person)
    @person = person
    person.rentals << self unless person.rentals.include?(self)
  end

  def add_book(book)
    @book = book
    book.rentals << self unless book.rentals.include?(self)
  end
end