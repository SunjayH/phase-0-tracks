class Book
	attr_accessor :title, :author, :genre, :publishingYear

	def initialize(title,author,publishingYear)
		puts "Initializing book"
		@title = title
		@author = author
		@publishingYear = publishingYear
		@genre = "Fiction"
	end

	def find_book
		puts "Go to your local library website and search for #{@title}."
	end

	def author_last_name
		last_name = @author.split[-1]
		puts "The author's last name is #{last_name}."
		last_name
	end

	def my_genre(preferred_genre)
		if @genre == preferred_genre
			puts "#{@title} is in your favorite genre!"
		else
			puts "#{@title} is not in your favorite genre."
		end
	end

	def published_after(year)
		if year < @publishingYear
			puts "#{@title} was published after #{year}."
		else
			puts "#{@title} was not published after #{year}."
		end
	end
end

#User interface

yes_values = ["y", "Y", "true"]
doneYet = nil
bookshelf = []
i = 0
loop do
	puts "What's the title of the book you found?"
	title = gets.chomp
	puts "What's the author's full name?"
	author = gets.chomp
	puts "What year was the book published?"
	publishingYear = gets.chomp.to_i
	bookshelf << Book.new(title,author,publishingYear)
	puts "Would you like to include a genre?"
	genre_input = gets.chomp
	if yes_values.any? {|yes| genre_input.include? yes}
		puts "What genre is the book?"
		new_genre = gets.chomp
		bookshelf[i].genre = new_genre
	else
		puts "Thank you"
	end
	puts "If you have finished inputting your books, please write done."
	puts "Otherwise, please press enter."
	doneYet = gets.chomp
	break if doneYet == "done"
	i += 1
end

bookshelf.length.times do |i|
	thisBook = bookshelf[i]
	puts "#{thisBook.title} is a #{thisBook.genre} book written by #{thisBook.author} and published in #{thisBook.publishingYear}."
end


