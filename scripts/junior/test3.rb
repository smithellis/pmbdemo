#! /usr/bin/env ruby

#3. Write a script that prints the sum of all even terms in the Fibonacci sequence whose values
#do not exceed 4,000,000.

# Get the fib for a number
def fibonacci(n)
    if n < 2
        n
    else
        fibonacci(n-1) + fibonacci(n-2)
    end
end

# Limits for our testing
fibrange = Array(0..4000000)

# Not graceful, but let's iterate through and do math!
# This made my CPU fan come on...must not be the best way
counter = 0
myfib = 0
mytotal = 0

while myfib<4000000
	myfib = fibonacci(counter)
	if myfib<4000000
		#puts myfib
		if myfib%2==0
			mytotal+=myfib
		end
		counter+=1
		#puts mytotal
	end
end

puts mytotal