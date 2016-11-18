# building_blocks

These coding exercises are from the Odin Project:

http://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks?ref=lc-pb


I used them to build basic ruby skills.

The first exercise was the caesar-cipher. The program takes a message and shifts all of the letters left across the alphabet to encrypt it. It can take any whole number and uses that number to shift each letter by that many spots left. The punctuation and spaces are unchanged.

The second exercise is the stock-picker. The stock picker takes an array as input. The array elements are the prices of the stocks to buy or sell. The index of the elements is the day of the week, so that array[1]==3 would mean that one day later the price will be 3 dollars. The stock-picker method finds the optimum day to buy a stock and then sell it later for the highest possible profit.

The third exercise was the substrings method. The method takes a string and an array as arguments. The method looks through the string once for each element in the array. It then returns a hash of the elements of the array as keys and the number of times that element was found in the string argument as the value. The method only checks for substring matches, it doesn't match whole words.



As part of a later exercise, I returned to this project and added Rspec testing for the caesar-cipher. The test makes sure that the caesar-cipher can handle all string inputs and returns the correctly shifted strings.
