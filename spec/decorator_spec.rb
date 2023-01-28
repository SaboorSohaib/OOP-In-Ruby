require_relative '../person'
require_relative '../book'
require_relative '../rentals'
require_relative '../capitalize_decorator'
require_relative '../trimmer_decorator'

describe 'testing decorators' do
  context 'When testing the decorator classes' do
    it 'should return the name of the person = NAME' do
      person = Person.new(19, 'maximilianus', true, 444)
      expect(person.correct_name).to eq 'maximilianus'
    end

    it "Should be able to return the person's name capitalized" do
      person = Person.new(19, 'maximilianus', true, 444)
      capitalized_person = CapitalizeDecorator.new(person)
      expect(capitalized_person.correct_name).to eq 'Maximilianus'
    end

    it "Should be able to return the person's name capitalized and trimmed to 10 characters" do
      person = Person.new(19, 'maximilianus', true, 444)
      capitalized_person = CapitalizeDecorator.new(person)
      trimmed_person = TrimmerDecorator.new(capitalized_person)
      expect(trimmed_person.correct_name).to eq 'Maximilian'
    end
  end
end
