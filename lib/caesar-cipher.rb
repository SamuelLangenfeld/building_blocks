#A method to take a string and shift each letter of the string to the left across the alphabet


def caesar_cipher(initial_string,number)

#I create two arrays to check the characters of the message against: one for uppercase, one for lower
	alphabet = ('a'..'z').to_a
	upper_alphabet = ('A'..'Z').to_a

=begin

Initially I had code to make a user enter the string and number. Turns out I didn't need it but 
I want to keep it for the future, if nothing else than to remember that gets only returns a string.

	puts "Enter a string"
	user_string= gets.chomp
	number=0

	while ((number>25)||(number<1)) do
		puts "Enter a shift value between 1 and 25"
		number= gets.to_i
	end

=end


	shifted_string=""
	while number>26
		number-=26
	end

	while number < 0
		number+=26
	end
	
#This is a loop that looks at each character before comparing them to the lowercase alphabet array
#If it finds a match, it will add on to the new shifted message. If it doesn't find the match there
#the loop looks in the uppercase alphabet. If there's no match anywhere we can assume the character
#is not a letter and simply append it to the shifted message in order to keep punctuation.
	initial_string.each_char do |i|

		if alphabet.include? i
			shifted_string+=alphabet[alphabet.index(i)-number]

		elsif upper_alphabet.include? i
			shifted_string+=upper_alphabet[upper_alphabet.index(i)-number]

		else
			shifted_string+=i

		end


	end


	shifted_string

end

