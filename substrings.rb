require "pry-byebug"

def substrings(phrase, dictionary)
  phrase = phrase.downcase.split()
  results = Hash.new(0)

  for word in phrase
    for substring in dictionary
      word.include?(substring.downcase) ? results[substring] += 1 : results
    end
  end

  results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
