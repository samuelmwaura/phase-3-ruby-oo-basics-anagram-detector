# Your code goes here!
#Take the list of the given strings
#for each  of the words in the strings, break it into an array of its constituent  characters
#Then sort the array of the constituent characters
#Take the word passed at initalization
#break it too in its contituent characters and sort the array of the cinstituent characters.
#for each array of the constituent word characters, compare with the array of the constituent characters of the word passed at initialization
#for each found, add it to an array
#return the array
class Anagram
    def initialize(word)
        @word = word
    end
    
    def match(possible_anagrams)
        anagrams = []
        possible_anagrams.each do |possible_anagram|
            if possible_anagram.chars.sort == @word.chars.sort
            anagrams << possible_anagram
            end
        end
        anagrams
    end
end

anagram1 = Anagram.new("listen")
pp anagram1.match(%w[enlists google inlets banana])