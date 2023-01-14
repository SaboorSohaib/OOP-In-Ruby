require './person'

class Student < Person
  def initialize(age, name = 'Unknown', parents_permissiom: true, classroom)
    super(age, name = 'Unknown', parents_permissiom: true)
    @classroom = classroom
  end

  def play_hooky
    puts '¯\(ツ)/¯'
  end
end
