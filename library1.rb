#date runs a program already installed in Ruby

require 'date'

#Books class gives a description on the library available. 
#Books class can add books but not remove them.

class Books
	def initialize
	  @user = 43
	  @book = []
	end

	def records()
	  reads = Hash.new
	  reads = {:cooper => "Ruby", :samson => "Python", :wesley => "PHP"}
	  reads[:author] = @book
	  puts reads.inspect
	end

	def add_book(author, title)
	  @book += []
	  @book = title
	  puts "You have successfully added #{title} by #{author}. The library now has #{@book} books."
	end
end

#User class allows addition of new library members.

class User
	def initialize
	  @user = 43
	  @book = 3
	  puts "The initialize method is running."
	end

	def new_user(name)
	  @user += 1
	  puts "Welcome #{name}, to the MakerSquare library. There are currently #{@user} members and #{@book} books."
	end
end

#The library is for library functions. This allows the user to check out and check in books.

class Library 
	def initialize
	  @user = 43
      @book = 3
	end

	def check_out(title, name)
	  @book -= 1
	  time = DateTime.now
	  puts time + 7
	  puts "#{name} has checked out #{title}. The book is due #{time + 7}."
	end

	def check_in(title, name)
	  @book += 1
	  puts "#{name} has returned #{title}. Thanks!"
	end
end