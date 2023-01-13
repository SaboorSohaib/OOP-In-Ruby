class Person

  attr_reader :id :name :age
  attr_writer :name :age
  
  def initialize(age, name = "Unknown", parents_permissiom: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parents_permissiom = parents_permissiom
  end

  private
  def is_of_age?
    if @age >= 18
        return true
    else
        return false
    end
  end

  public
  def can_use_service?
    if is_of_age == true || parents_permissiom == true
        return true
    end
  end
end
