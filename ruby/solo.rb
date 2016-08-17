class Book
	attr_selector :title :author :genre :publishingYear

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