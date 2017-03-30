#method that tracks how many words in the supplied dictionary, matches the input words of a string
def substring(word, dictionary)
  #create a hash for tracking, key = word from dictionary/value = count of words within input string
  substring_list = Hash.new
  ##split input string by whitespace
  substring_words = word.split(/[\s]/)
  #for each word and each dictionary
  substring_words.each do |w|
    dictionary.each do |d|
      #check if the dictionary word of any case matches the input words
      if /#{d}/i =~ w
        #add dictionary word as key and input words word count as value in the hash
        substring_list[d] = substring_words.count{|x| /#{d}/i =~ x}

      end
    end
  end
  #return the completed hash
  return substring_list
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low", "own","part","partner","sit"]

puts substring("below", dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)
