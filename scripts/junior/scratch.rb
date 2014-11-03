def crusher(myvar)
	puts myvar.gsub(/\s+/, "").squeeze
end

crusher("abb cddpddef gh")