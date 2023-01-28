require_relative '../book'
require_relative '../student'

describe Book do
  context 'Testing the Book class' do
    title = 'The Evil Forest'
    author = 'Ahmed'
    book = Book.new(title, author)

    it 'should validate the title of the book' do
      expect(book.title).to eq title
    end

    it 'should validate the author of the book' do
      expect(book.author).to eq author
    end

    it 'should add a rental properly' do
      student = Student.new('NAME', 24, 444, true)
      book.add_rental(student, '2022/12/2')
      expect(book.rental.length).to eq 1
    end
  end
end
