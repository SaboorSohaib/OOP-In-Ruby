def list_all_stored_books
  if File.exist?('book.json') && !File.zero?('book.json')
    bookfile = File.open('book.json')
    bookjson = bookfile.read
    JSON.parse(bookjson).map do |bk|
      example = Book.new(bk['title'], bk['author'])
      @book.push(example)
    end
    bookfile.close
  else
    File.new('book.json', 'w')
  end
end

def list_all_stored_people
  if File.exist?('people.json') && !File.zero?('people.json')
    peoplefile = File.open('people.json')
    peoplejson = peoplefile.read
    JSON.parse(peoplejson).map do |pep|
      if pep['classroom']
        @people.push(Student.new(pep['classroom'], pep['age'], pep['name'],
                                 parents_permission: pep['parents_permission']))
      else
        @people.push(Teacher.new(pep['specialization'], pep['age'], pep['name']))
      end
    end
    peoplefile.close
  else
    File.new('people.json', 'w')
  end
end

def list_all_stored_rentals
  if File.exist?('rental.json') && !File.zero?('rental.json')
    rentalfile = File.open('rental.json')
    rentaljson = rentalfile.read
    JSON.parse(rentaljson).map do |ren|
      book = Book.new(ren['book']['title'], ren['book']['author'])
      person = Student.new('11a', ren['person']['age'], ren['person']['name'], ren['person']['id'])
      item = Rental.new(ren['date'], book, person)
      @rental.push(item)
    end
    rentalfile.close
  else
    File.new('rental.json', 'w')
  end
end

# def person_string
#   jsonarr = []
#   @people.each do |item|
#     if item.instance_of?(Student)
#       jsonarr.push({ classroom: item.classroom, age: item.age, name: item.name,
#                      parents_permission: item.parents_permission, id: item.id })
#     else
#       jsonarr.push({ age: item.age, name: item.name, id: item.id })
#     end
#   end
#   json = JSON.generate(jsonarr)
#   File.write('people.json', json)
# end
