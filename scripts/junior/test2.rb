#! /usr/bin/env ruby

#2. Write a method to compact a string in place, removing all white space and removing
#duplicate characters if they are next to each other For example, given the input “abb
#cddpddef gh”, the output of your program should be: “abcdpdefgh”.

def crusher(myvar)
	puts myvar.gsub(/\s+/, "").squeeze
end

crusher("abb cddpddef gh")