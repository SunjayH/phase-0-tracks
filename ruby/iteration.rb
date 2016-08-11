thisArray = ["cheese","sauce","pineapple", "pepperoni"]
hashBrowns = {"firstElement" => "a",
	"secondElement" => "b",
	"thirdElement" => "c"}

thisArray.each do |x|
	puts "#{x} is a pizza topping! Delicious."
end

thisArray.map! do |x|
	if x == "pineapple"
		puts "Ew, #{x} on pizza? Gross"
	else
		puts "Yum!"
	end
end

hashBrowns.each do |x|
	puts x
end