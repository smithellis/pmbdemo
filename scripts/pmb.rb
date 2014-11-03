#!/usr/bin/ruby

#1. Write a script that prints the numbers 1 to 100, but replaces the numeral with "foo" for any
#number divisible by 3 and "bar" for any number divisible by 5 and "foobar" for any number
#divisible by both 3 and 5.
#2. Write a method to compact a string in place, removing all white space and removing
#duplicate characters if they are next to each other For example, given the input “abb
#cddpddef gh”, the output of your program should be: “abcdpdefgh”.
#3. Write a script that prints the sum of all even terms in the Fibonacci sequence whose values
#do not exceed 4,000,000.
#4. Extra credit: write tests to demonstrate that your scripts work.

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


def crusher(myvar)
	myvar = myvar.gsub(/\s+/, "")
	lastchar = ""
	dump = ""
	myvar.split("").each do |i|
		if i==lastchar			
		else
			dump.concat(i)
			lastchar=i
		end
	end
	puts dump
end

crusher("Show me theeeee money      so I cannnn do it.")




def fibonacci(n)
    if n < 2
        n
    else
        fibonacci(n-1) + fibonacci(n-2)
    end
end

fibrange = Array(0..4000000)


counter = 0
myfib = 0
while myfib<4000000
	myfib = fibonacci(counter)
	if myfib<4000000
		puts myfib
		counter+=1
	end
end