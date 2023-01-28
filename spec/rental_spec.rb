require_relative '../rentals'
require_relative '../book'
require_relative '../student'

describe Rental do
  context 'Testing the Rental class' do
    book = Book.new('The Evil Forest', 'Ahmed')
    student = Student.new('Harry Potter', 19, true, 344)
    date = '2022/12/12'
    rental = Rental.new(date, book, student)

    it 'should validate the date of the rental' do
      expect(rental.date).to eq date
    end

    it 'should validate the person who rented the book' do
      expect(rental.person).to eq student
    end

    it 'should validate the book being rented' do
      expect(rental.book).to eq book
    end
  end
end
