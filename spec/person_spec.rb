require_relative '../person'
require_relative '../book'
require_relative '../rentals'

describe 'testing person' do
  context 'When testing the Person class' do
    it 'should create a person properly' do
      person = Person.new(12, 'Abid', true, 444)
      expect(person.class).to eq Person
    end
    it "should return the person's name" do
      person = Person.new(12, 'Abid', true, 444)
      expect(person.correct_name).to eq 'Abid'
    end
    it 'should return if the person can use services or not = ' do
      person = Person.new(12, 'Abid', true, 444)
      expect(person.can_use_service?).to eq true
    end
  end
end
