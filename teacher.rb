require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(specialization, age, name, parents_permission: true)
    super(age, name, parents_permission: parents_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
