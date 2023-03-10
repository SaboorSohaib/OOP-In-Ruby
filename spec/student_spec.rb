require_relative '../student'
require_relative '../book'
require_relative '../rentals'
require_relative '../classroom'

describe 'testing student' do
  context 'When testing the Student class' do
    it 'should create a student properly' do
      student = Student.new(19, 'NAME', true, 444)
      expect(student.class).to eq Student
    end

    it 'should add a classroom to student' do
      student = Student.new(19, 'NAME', true, 444)
      classroom = Classroom.new('MATHS')
      student.classroom = classroom
      expect(student.classroom.label).to eq 'MATHS'
    end

    it 'should be equal ¯\\(ツ)/¯' do
      student = Student.new(19, 'NAME', true, 444)
      expect(student.play_hooky).to eq '¯\\(ツ)/¯'
    end
  end
end
