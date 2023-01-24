require_relative 'person'

class Teacher < Person
  def initialize(specialization, age, name, permission: true)
    super(age, name, permission: permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
