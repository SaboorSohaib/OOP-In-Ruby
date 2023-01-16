require_relative './nameable'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parents_permission: true)
    super
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parents_permission = parents_permission
    @rentals = []
  end

  private

  def of_age?()
    @age >= 18
  end

  public

  def can_use_service?
    of_age? || @parents_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(book, date, self)
  end
end
