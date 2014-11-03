#! /usr/bin/env ruby


#1. Write a script that prints the numbers 1 to 100, but replaces the numeral with "foo" for any
#number divisible by 3 and "bar" for any number divisible by 5 and "foobar" for any number
#divisible by both 3 and 5.


numrange = Array(1..100)

for i in numrange
	if i%3==0 && i%5==0
		puts "foobar"
	elsif i%3==0
		puts "foo"
	elsif i%5==0
		puts "bar"
	else
		puts i
	end
end