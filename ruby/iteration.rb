thisArray = ["cheese","sauce","pineapple", "pepperoni"]
hashBrowns = {"firstElement" => "a", "secondElement" => "b", "thirdElement" => "c"}

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

otherArray = [1,2,3,4,5,6,7,8,9]
otherArray.delete_if {|item| item < 5}

otherArray = [1,2,3,4,5,6,7,8,9]
otherArray.keep_if {|item| item < 5}

otherArray = [1,2,3,4,5,6,7,8,9]
otherArray.select {|item| item.even?}

otherArray.take_while {|item| item < 9}

hashBrowns.delete_if {|key,value| value == "b"}

hashBrowns = {"firstElement" => "a", "secondElement" => "b", "thirdElement" => "c"}
hashBrowns.keep_if {|key,value| value == "b"}

hashBrowns = {"firstElement" => "a", "secondElement" => "b", "thirdElement" => "c"}
hashBrowns.select {|key,value| key == "firstElement"}

hashBrowns.take_while {|key,value| key != "thirdElement"}