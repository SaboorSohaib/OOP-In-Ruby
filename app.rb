require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rentals'
require_relative 'classroom'

class App
  attr_reader :classroom

  def initialize
    @book = []
    @people = []
    @rental = []
  end

  def menu
    puts '1 - List all Books'
    puts '2 - List all People'
    puts '3 - Create a Person'
    puts '4 - Create a Book'
    puts '5 - Create a Rental'
    puts '6 - List all Rentals for a given person id'
    puts '7 - Exit'
    input
  end

  def input
    action = gets.chomp.to_i
    if action < 7
      select(action)
    elsif action == 7
      puts 'Good Bye!'
    else
      puts 'Please selct a number from 1 to 7 to continue'
    end
  end

  def select
    case action
    when 1
      list_all_books
    when 2
      list_all_people
    when 3
      create_a_person
    when 4
      create_a_book
    when 5
      create_a_rental
    when 6
      list_all_rentals
    end
  end

  def list_all_books
    if @book.empty?
      puts 'There is no book\n'
    else
      @book.each { |_b| puts "#{b.title} written by #{b.author}" }
    end
  end

  def list_all_people
    if @people.empty?
      puts 'There is no people\n'
    else
      @people.each { |p| puts "Name:#{p.name} Age:#{p.age} Class:#{p.class} ID:#{p.id}" }
    end
    menu
  end

  def create_a_person
    pust 'Do you want to create a student (1) or teacher (2)'
    x = gets.chomp.to_i
    case x
    when 1
      create_student
    when 2
      create_teacher
    end
  end

  def create_student
    puts 'Name'
    name = gets.chomp
    puts 'Age'
    age = gets.chomp
    puts 'classroom'
    clsroom = gets.chomp
    puts 'permission'
    perms = gets.chomp
    std = Student.new(name, age, clsroom, permission: perms)
    @people.push(std)
    menu
  end

  def create_teacher
    puts 'Name'
    name = gets.chomp
    puts 'Age'
    age = gets.chomp
    pust 'specialization'
    specilaze = gets.chomp
    teach = Teacher.new(name, age, specilaze)
    @people.push(teach)
    menu
  end

  def create_a_book
    pust 'Title'
    tit = gets.chomp
    puts 'Author'
    auth = gets.chomp
    bo = Book.new(tit, auth)
    @book.push(bo)
    menu
  end

  def create_a_rental
    puts 'date(yyyy/dd/mm'
    date = gets.chomp
    puts 'Select a book'
    @book.each_with_index { |_b, _i| puts "#{i} #{b.title} written by #{b.author}" }
    bookid = gets.chomp.to_i
    book = @book[bookid]
    puts 'Select a person'
    @people.each_with_index { |_p, _i| puts "#{i} #{p.name}" }
    personid = gets.chomp.to_i
    person = @people[personid]
    rental = Rental.new(date, book, person)
    @rental.push(rental)
    menu
  end

  def list_all_rentals
    if @rental.empty?
      puts 'There are no rentals'
    else
      puts 'Please type person id'
      id = gets.chomp.to_i
      @rental.each do |r|
        puts "Date: #{r.date}, Book:#{r.book.title} by #{r.book.author}" if r.person.id == id
      end
    end
    menu
  end
end
