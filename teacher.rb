require_relative 'person'

class Teacher < Person
  def initialize(specialization, age, name, parents_permission)
    super(age, name, parents_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
