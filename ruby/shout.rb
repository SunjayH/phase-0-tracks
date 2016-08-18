#module Shout
#  def self.yell_angrily(words)
#  	words + "!!!" + " >:("
#  end
#  def self.yell_happily(words)
#  	words + "!!" + " :)"
#  end
#end

module Shout
	def yell_angrily(words)
		words + "!!!" + " >:("
	end
	def yell_happily(words)
		words + "!!" + " :)"
	end
end

class Coach
	include Shout
end
class Child
	include Shout
end

Bob = Coach.new
Cindy = Child.new
puts Bob.yell_angrily("Get the ball")
puts Cindy.yell_happily("I caught a Pikachu")

