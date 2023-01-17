#!/usr/bin/env ruby
require_relative 'app'

# def main
#   puts "Welcome to School Library App!\nPlease choose an option by enterin a number from 1 to 7:
#     \n1 - List all books\n2 - List all people\n3 - Create a person\n4 - Create a book
#     \n5 - Create a rental\n6 - List all rental for a given id\n7 - Exit"
#   action = nil

#   while action != 7
#     action = gets.chomp.to_i
#     if action < 7 && action.positive?
#       start(action)
#     elsif action == 7
#       puts 'Good Bye!'
#     end
#     else
#       main
#   end 
# end

# def start(action)
#   app = App.new
#   case action
#   when 1
#     app.list_all_books
#   when 2
#     app.list_all_people
#   when 3
#     app.create_a_person
#   when 4
#     app.create_a_book
#   when 5
#     app.create_a_rental
#   when 6
#     app.list_all_rentals
#   end
# end

# main


def main
    app = App.new()
  
    response = nil
  
    puts "Welcome to School Library App!\n\n"
    while response != "7"
      puts "Please choose an option by enter in a number:"
      puts "1 - List all books"
      puts "2 - List all people"
      puts "3 - Create a person"
      puts "4 - Create a book"
      puts "5 - Create a rental"
      puts "6 - List all rental for a given id"
      puts "7 - Exit"
      response = gets.chomp
  
      case response
      when "1"
        app.list_all_books()
      when "2"
        app.list_all_people()
      when "3"
        app.create_a_person()
      when "4"
        app.create_a_book()
      when "5"
        app.create_a_rental()
      when "6"
        app.list_all_rentals()
      when "7"
        # *Have a way to quit the app.
        puts "Thank you for using this app!"
      end
  
      puts "\n"
    end
  end
  
  main()