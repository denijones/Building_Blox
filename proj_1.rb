#method to cipher with ceasar cipher method; x is the phrase, y is the key.
def ceasar_cipher(x,y)
  #split each letter in the phrase into an array or the letters
  x = x.split("")
  #turn the key into an integer
  y = y.to_i
  #create a global varible for location holding in lowercase_letters array
  location = 0
  #create an array of letters a..z
  lowercase_letters = ("a".."z").to_a

  #switch each letter out using the key
  x.collect! do |letter|
    #if the letter is indeed a letter then proceed
    if lowercase_letters.include?(letter.downcase)
      #find which index the letter is in the lowercase_letters array
      location = lowercase_letters.index(letter.downcase)
      #ok now find the new index by adding the key to the index
      location += y

      #if the location passes z, then cycle back to the beginning
      if location > 25
        #subtract from the total to get to the correct index, include 1 since index starts at 0
        location -= 26
      end

      #if the letter is uppercase
      if upcase?(letter)
        #then make it uppercase again after cipher
        letter = lowercase_letters[location].upcase!
      else
        letter = lowercase_letters[location]
      end

    else

      #if it wasn't a letter then let it be e.g. whitespace,symbols
      letter

    end

  end


  #put it all back together again
  return x.join("")

end

#check if a letter is uppercase
def upcase?(x)
  x == x.upcase
end

#get information to cipher from user
puts "Enter a phrase to encrypt using Ceasar Cipher: "
phrase = gets.chomp

puts "Now enter the key number: "
key = gets.chomp

puts ceasar_cipher(phrase,key)
