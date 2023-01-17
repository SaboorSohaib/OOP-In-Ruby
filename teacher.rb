require_relative 'person'

class Teacher < Person
  def initialize(specialization, age, name, permission)
    super(age, name, permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
