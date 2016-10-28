def substrings(word_string, dictionary)

	target=word_string.downcase
	number_found=0
	
	substrings_hash={}
	
	dictionary.size.times do |i|

=begin

What I wrote here will work but other students have come up with a simpler solution.
You can use the string.scan method to find the number of occurrences of one string within another

number_found= target.scan(dictionary[i]).length

The scan method makes an array with every instance of the matched pattern in it. So if the string
"go" was found 3 times, it would make an array ["go","go","go"]. We just want the number of hits
so we can use the array.length method to find that number.

This would replace the while loop. I also wouldn't have to reset target for every iteration of the
parent loop. The scan wouldn't change it.


=end
		number_found=0
		target=word_string.downcase
		
		

		while (dictionary[i]==target.slice!(dictionary[i])) do
			number_found+=1
			

		end

		if (number_found>0)
			substrings_hash.store(dictionary[i],number_found)
		end







		

	end

	substrings_hash.to_s



end