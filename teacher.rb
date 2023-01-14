require './person'

class Teacher < Person
  def initialize(age, name = 'Unknown', parents_permissiom: true, specialization)
    super(age, name = 'Unknown', parents_permissiom: true)
    @specialization = specialization
  end

  def can_use_service?
    puts true
  end
end
