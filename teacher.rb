require './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', parents_permissiom: true)
    super(age, name, parents_permissiom)
    @specialization = specialization
  end

  def can_use_service?
    puts true
  end
end
