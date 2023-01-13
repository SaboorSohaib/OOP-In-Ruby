class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parents_permissiom: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parents_permissiom = parents_permissiom
  end

  private

  def of_age?
    return true if @age >= 18
  end

  public

  def can_use_service?
    return unless of_age? == true || @parents_permissiom == true
  end
end
