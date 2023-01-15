require './person'

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parents_permissiom: true)
    super(age, name, parents_permissiom)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
